#!/usr/bin/env python3
"""
Test all combinations of pancake configurations for echo_server.
This script generates all possible combinations of pancake flags and attempts to compile each one.
"""

import subprocess
import itertools
import sys
from pathlib import Path

# Boards to test
BOARDS = ["odroidc4", "maaxboard", "star64"][::-1]

# Configuration flags to test (excluding I2C and BLK as requested)
PANCAKE_FLAGS = {
    "PANCAKE_NETWORK_DRIVER": [0, 1],
    "PANCAKE_NETWORK_VIRT_TX": [0, 1],
    "PANCAKE_NETWORK_VIRT_RX": [0, 1],
    "PANCAKE_NETWORK_COPY": [0, 1],
    "PANCAKE_SERIAL_DRIVER": [0, 1],
    "PANCAKE_SERIAL_VIRT_TX": [0, 1],
    "PANCAKE_SERIAL_VIRT_RX": [0, 1],
    "PANCAKE_TIMER": [0, 1],
}

# Base configuration (these remain constant)
BASE_CONFIG_TEMPLATE = {
    "MICROKIT_SDK": "/home/zhewen/Documents/code/sddf/microkit-sdk-2.0.1",
    "MICROKIT_CONFIG": "benchmark",
    "CAKE_COMPILER": "cake",
    "PANCAKE_I2C": "0",
    "PANCAKE_BLK": "0",
    "PANCAKE_BLK_DRIVER": "0",
}


def write_config_file(config_path, config_dict):
    """Write the pancake.config file with given configuration."""
    with open(config_path, "w") as f:
        for key, value in config_dict.items():
            if key.startswith("#"):
                f.write(f"# {key[1:]}={value}\n")
            else:
                f.write(f"{key}={value}\n")


def compile_config(config_num, total_configs, board, config_dict):
    """Attempt to compile with the given configuration."""
    print(f"\n{'=' * 80}")
    print(f"Testing configuration {config_num}/{total_configs} - Board: {board}")
    print(f"{'=' * 80}")

    # Print the configuration
    print(f"  BOARD: {board}")
    for key, value in config_dict.items():
        if key.startswith("PANCAKE_"):
            print(f"  {key}: {value}")

    # Write config file
    config_path = Path(__file__).parent / "pancake.config"
    write_config_file(config_path, config_dict)

    # Clean build
    print("\nCleaning...")
    result = subprocess.run(["make", "clean"], capture_output=True, text=True)

    # Attempt compile
    print("Compiling...")
    result = subprocess.run(["make", "-j"], capture_output=True, text=True, timeout=120)

    if result.returncode == 0:
        print("✓ SUCCESS")
        return True
    else:
        print("✗ FAILED")
        print("\nError output:")
        print(result.stderr[-500:] if len(result.stderr) > 500 else result.stderr)
        return False


def main():
    """Main function to test all configurations."""
    print("Pancake Configuration Matrix Test")
    print("=" * 80)

    # Generate all combinations
    flag_names = list(PANCAKE_FLAGS.keys())
    flag_values = [PANCAKE_FLAGS[name] for name in flag_names]

    all_combinations = list(itertools.product(*flag_values))
    total_configs_per_board = len(all_combinations)
    total_configs = total_configs_per_board * len(BOARDS)

    print(f"Testing {len(BOARDS)} boards: {', '.join(BOARDS)}")
    print(f"Testing {total_configs_per_board} configurations per board")
    print(f"Total configurations: {total_configs}")
    print(f"Flags: {', '.join(flag_names)}")

    results = {}
    for board in BOARDS:
        results[board] = {"successful": 0, "failed": 0, "failures": []}

    config_counter = 0

    for board in BOARDS:
        print(f"\n{'=' * 80}")
        print(f"Testing board: {board}")
        print(f"{'=' * 80}")

        for combination in all_combinations:
            config_counter += 1

            # Build configuration dictionary
            config_dict = BASE_CONFIG_TEMPLATE.copy()
            config_dict["MICROKIT_BOARD"] = board
            for flag_name, flag_value in zip(flag_names, combination):
                config_dict[flag_name] = str(flag_value)

            try:
                success = compile_config(
                    config_counter, total_configs, board, config_dict
                )
                if success:
                    results[board]["successful"] += 1
                else:
                    results[board]["failed"] += 1
                    results[board]["failures"].append(combination)
            except subprocess.TimeoutExpired:
                print("✗ TIMEOUT")
                results[board]["failed"] += 1
                results[board]["failures"].append(combination)
            except KeyboardInterrupt:
                print("\n\nInterrupted by user")
                # Print partial summary
                print_summary(results, flag_names, config_counter)
                return 1
            except Exception as e:
                print(f"✗ ERROR: {e}")
                results[board]["failed"] += 1
                results[board]["failures"].append(combination)

    # Print summary
    print_summary(results, flag_names, config_counter)

    total_failed = sum(r["failed"] for r in results.values())
    return 0 if total_failed == 0 else 1


def print_summary(results, flag_names, total_tested):
    """Print the test summary."""
    print("\n" + "=" * 80)
    print("SUMMARY")
    print("=" * 80)

    total_successful = sum(r["successful"] for r in results.values())
    total_failed = sum(r["failed"] for r in results.values())

    print(f"Total configurations tested: {total_tested}")
    print(f"Successful: {total_successful}")
    print(f"Failed: {total_failed}")
    if total_successful + total_failed > 0:
        print(
            f"Success rate: {total_successful / (total_successful + total_failed) * 100:.1f}%"
        )

    # Per-board summary
    print("\nPer-board results:")
    for board, result in results.items():
        total = result["successful"] + result["failed"]
        if total > 0:
            success_rate = result["successful"] / total * 100
            print(f"  {board}: {result['successful']}/{total} ({success_rate:.1f}%)")

    # Print failed configurations per board
    for board, result in results.items():
        if result["failures"]:
            print(f"\nFailed configurations for {board}:")
            for combination in result["failures"][:10]:  # Show first 10
                config_str = ", ".join(
                    [f"{name}={val}" for name, val in zip(flag_names, combination)]
                )
                print(f"  {config_str}")
            if len(result["failures"]) > 10:
                print(f"  ... and {len(result['failures']) - 10} more")


if __name__ == "__main__":
    sys.exit(main())
