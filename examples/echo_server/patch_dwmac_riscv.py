#!/usr/bin/env python3

import subprocess
import struct
import sys
import os

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"error: {cmd}")
        print(result.stderr)
        sys.exit(1)
    return result.stdout

def patch_binary():
    with open('build/eth_driver.elf', 'rb') as f:
        data = bytearray(f.read())

    base_vaddr = 0x200000
    text_offset = 0x1000

    # https://riscvasm.lucasteske.dev/# to get the hex of the insn
    patches = [
        (0x202500, 0x0585b403, 0x0585be03),  # ld s0,88(a1) -> ld t3,88(a1)
        (0x202518, 0x0085f333, 0x01c5f333),  # and t1,a1,s0 -> and t1,a1,t3
        (0x202588, 0x008c3423, 0x01cc3423),  # sd s0,8(s8) -> sd t3,8(s8)
    ]

    for addr, old_insn, new_insn in patches:
        offset = (addr - base_vaddr) + text_offset
        current = struct.unpack('<I', data[offset:offset+4])[0]

        if current != old_insn:
            print(f"diff instruction at 0x{addr:08x}")
            return False

        struct.pack_into('<I', data, offset, new_insn)
        print(f"  patched 0x{addr:08x}")

    with open('build/eth_driver_patched.elf', 'wb') as f:
        f.write(data)

    return True

def main():
    print("building echo_server...")
    run_cmd("make clean >/dev/null 2>&1")
    run_cmd("make -j$(nproc)")

    print("\npatching eth_driver.elf...")
    if not patch_binary():
        sys.exit(1)

    run_cmd("cp build/eth_driver.elf build/eth_driver_original.elf")
    run_cmd("cp build/eth_driver_patched.elf build/eth_driver.elf")

    print("\nrebuilding loader.img...")
    os.chdir("build")
    # run_cmd("/home/zhewen/Documents/microkit/release/microkit-sdk-2.0.1-dev/bin/microkit " +
    #         "echo_server.system --search-path . --board star64 --config debug " +
    #         "-o loader.img -r report.txt")

    run_cmd("/home/zhewen/Documents/sddf/microkit-sdk-2.0.1/bin/microkit " +
            "echo_server.system --search-path . --board star64 --config debug " +
            "-o loader.img -r report.txt")
    os.chdir("..")

    print("\ni think it worked... hopefully... i wanna sleep...")

if __name__ == '__main__':
    main()
