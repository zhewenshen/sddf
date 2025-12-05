# Copyright 2025, UNSW
# SPDX-License-Identifier: BSD-2-Clause
import argparse
import struct
from typing import List
from dataclasses import dataclass
from sdfgen import SystemDescription, Sddf, DeviceTree
from importlib.metadata import version

assert version("sdfgen").split(".")[1] == "26", "Unexpected sdfgen version"

ProtectionDomain = SystemDescription.ProtectionDomain
MemoryRegion = SystemDescription.MemoryRegion
Map = SystemDescription.Map
Channel = SystemDescription.Channel


@dataclass
class Board:
    name: str
    arch: SystemDescription.Arch
    paddr_top: int
    serial: str
    timer: str


BOARDS: List[Board] = [
    Board(
        name="qemu_virt_aarch64",
        arch=SystemDescription.Arch.AARCH64,
        paddr_top=0xA_000_000,
        serial="pl011@9000000",
        timer="timer",
    ),
    Board(
        name="maaxboard",
        arch=SystemDescription.Arch.AARCH64,
        paddr_top=0x70000000,
        serial="soc@0/bus@30800000/serial@30860000",
        timer="soc@0/bus@30000000/timer@302d0000",
    ),
    Board(
        name="imx8mm_evk",
        arch=SystemDescription.Arch.AARCH64,
        paddr_top=0x70000000,
        serial="soc@0/bus@30800000/spba-bus@30800000/serial@30890000",
        timer="soc@0/bus@30000000/timer@302d0000",
    ),
    Board(
        name="imx8mp_evk",
        arch=SystemDescription.Arch.AARCH64,
        paddr_top=0x70000000,
        serial="soc@0/bus@30800000/spba-bus@30800000/serial@30890000",
        timer="soc@0/bus@30000000/timer@302d0000",
    ),
    Board(
        name="imx8mq_evk",
        arch=SystemDescription.Arch.AARCH64,
        paddr_top=0x70000000,
        serial="soc@0/bus@30800000/serial@30860000",
        timer="soc@0/bus@30000000/timer@302d0000",
    ),
]


class PingPongConfigA:
    """Config for client_a: cycle_counters ptr, partner channel, idle init channel"""
    def __init__(self, cycle_counters: int, partner_ch: int, idle_init_ch: int):
        self.cycle_counters = cycle_counters
        self.partner_ch = partner_ch
        self.idle_init_ch = idle_init_ch

    def serialise(self) -> bytes:
        return struct.pack("<qBB", self.cycle_counters, self.partner_ch, self.idle_init_ch)


class PingPongConfigB:
    """Config for client_b: just partner channel"""
    def __init__(self, partner_ch: int):
        self.partner_ch = partner_ch

    def serialise(self) -> bytes:
        return struct.pack("<B", self.partner_ch)


class BenchmarkIdleConfig:
    """Config for idle benchmark thread"""
    def __init__(self, cycle_counters: int, ch_init: int):
        self.cycle_counters = cycle_counters
        self.ch_init = ch_init

    def serialise(self) -> bytes:
        return struct.pack("<qB", self.cycle_counters, self.ch_init)


def generate(sdf_file: str, output_dir: str, dtb: DeviceTree):
    # Get device tree nodes
    uart_node = dtb.node(board.serial)
    assert uart_node is not None

    # Create protection domains
    uart_driver = ProtectionDomain("serial_driver", "serial_driver.elf", priority=253)
    serial_virt_tx = ProtectionDomain("serial_virt_tx", "serial_virt_tx.elf", priority=252)

    # Clients - higher priority than idle, lower than drivers
    client_a = ProtectionDomain("client_a", "client_a.elf", priority=10)
    client_b = ProtectionDomain("client_b", "client_b.elf", priority=10)

    # Idle benchmark thread - lowest priority
    bench_idle = ProtectionDomain("bench_idle", "idle.elf", priority=1)

    # Create serial system
    serial_system = Sddf.Serial(sdf, uart_node, uart_driver, serial_virt_tx)

    # Connect clients to serial
    serial_system.add_client(client_a)
    serial_system.add_client(client_b)

    # Create ping-pong channel between client_a and client_b
    pingpong_ch = Channel(client_a, client_b)
    sdf.add_channel(pingpong_ch)

    # Create channel for client_a to start idle counter
    idle_init_ch = Channel(client_a, bench_idle)
    sdf.add_channel(idle_init_ch)

    # Create shared cycle counters memory region
    cycle_counters_mr = MemoryRegion(sdf, "cycle_counters", 0x1000)
    sdf.add_mr(cycle_counters_mr)

    # Map cycle counters to client_a and bench_idle
    CYCLE_COUNTERS_VADDR_A = 0x20_000_000
    CYCLE_COUNTERS_VADDR_IDLE = 0x5_000_000

    client_a.add_map(Map(cycle_counters_mr, CYCLE_COUNTERS_VADDR_A, perms="rw"))
    bench_idle.add_map(Map(cycle_counters_mr, CYCLE_COUNTERS_VADDR_IDLE, perms="rw"))

    # Add all PDs
    pds = [uart_driver, serial_virt_tx, client_a, client_b, bench_idle]
    for pd in pds:
        sdf.add_pd(pd)

    # Connect serial system
    assert serial_system.connect()
    assert serial_system.serialise_config(output_dir)

    # Create and serialize pingpong configs
    pingpong_config_a = PingPongConfigA(
        CYCLE_COUNTERS_VADDR_A,
        pingpong_ch.pd_a_id,
        idle_init_ch.pd_a_id
    )
    pingpong_config_b = PingPongConfigB(pingpong_ch.pd_b_id)

    bench_idle_config = BenchmarkIdleConfig(
        CYCLE_COUNTERS_VADDR_IDLE,
        idle_init_ch.pd_b_id
    )

    with open(f"{output_dir}/pingpong_config_a.data", "wb+") as f:
        f.write(pingpong_config_a.serialise())

    with open(f"{output_dir}/pingpong_config_b.data", "wb+") as f:
        f.write(pingpong_config_b.serialise())

    with open(f"{output_dir}/benchmark_idle_config.data", "wb+") as f:
        f.write(bench_idle_config.serialise())

    with open(f"{output_dir}/{sdf_file}", "w+") as f:
        f.write(sdf.render())


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--dtb", required=True)
    parser.add_argument("--sddf", required=True)
    parser.add_argument("--board", required=True, choices=[b.name for b in BOARDS])
    parser.add_argument("--output", required=True)
    parser.add_argument("--sdf", required=True)

    args = parser.parse_args()

    board = next(filter(lambda b: b.name == args.board, BOARDS))

    sdf = SystemDescription(board.arch, board.paddr_top)
    sddf = Sddf(args.sddf)

    with open(args.dtb, "rb") as f:
        dtb = DeviceTree(f.read())

    generate(args.sdf, args.output, dtb)
