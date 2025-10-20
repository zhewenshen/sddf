# uSDHC MMC/SD Card Driver - Pancake Port

## Overview

This document describes the Pancake port of the i.MX8 uSDHC (Ultra Secured Digital Host Controller) block device driver. The port implements performance-critical hot paths in Pancake while keeping complex state machine logic in C.

## Architecture

### Hybrid C/Pancake Design

The driver uses a **hybrid approach**:

- **Pancake** (usdhc.🥞): Performance-critical hot paths
  - IRQ handling and interrupt status checking
  - Block queue request/response processing
  - Register access operations
  - DMA setup helpers

- **C** (usdhc.c): Complex logic
  - Card initialization and identification
  - Command sending state machines
  - Error recovery and card state management
  - SD/MMC protocol implementation

### Why This Split?

The MMC driver has complex multi-state workflows for card initialization:
- Card identification (CMD0, CMD8, ACMD41, etc.)
- Frequency changes and clock management
- CSD/CID register parsing
- Multi-step command sequences with app-command prefixes (CMD55 + ACMD)

These are kept in C to maintain code clarity and leverage existing C infrastructure. Pancake handles the performance-critical paths where low latency matters.

## Memory Layout

The Pancake code uses memory slots to interface with the C glue code:

```
Slot 0:  uSDHC register base address (volatile imx_usdhc_regs_t *)
Slot 1:  IRQ channel ID
Slot 2:  Virtualizer channel ID

Slots 3-5: Block queue handle (blk_queue_handle_t)
  Slot 3:  Request queue pointer
  Slot 4:  Response queue pointer
  Slot 5:  Queue capacity (num_buffers)

Slots 6-11: Current request state
  Slot 6:  BLK_REQ_INFLIGHT (bool)
  Slot 7:  BLK_REQ_ID
  Slot 8:  BLK_REQ_CODE
  Slot 9:  BLK_REQ_PADDR
  Slot 10: BLK_REQ_BLK_NUMBER
  Slot 11: BLK_REQ_BLK_COUNT

Slot 12: CARD_CCS (Card Capacity Status - SDHC/SDXC vs SDSC)
Slot 13: DRIVER_STATUS (Inactive=0, Bringup=1, Active=2)
```

### Memory Setup (C Side)

In `init()`, the C code sets up the Pancake memory layout:

```c
#ifdef PANCAKE_BLK_DRIVER
    init_pancake_mem();
    uintptr_t *pnk_mem = (uintptr_t *) cml_heap;

    /* Configure memory slots */
    pnk_mem[0] = (uintptr_t) usdhc_regs;
    pnk_mem[1] = device_resources.irqs[0].id;
    pnk_mem[2] = blk_config.virt.id;

    /* Allocate queue handle */
    blk_queue_ptr = (blk_queue_handle_t *) &pnk_mem[3];
    blk_queue_init(blk_queue_ptr, ...);

    /* Initialize state */
    pnk_mem[6-13] = initial values;

    /* Enter Pancake runtime */
    cml_main();
#endif
```

## Key Functions

### Pancake Functions (usdhc.🥞)

#### `export fun notified(1 ch)`
Main entry point called on notifications. Handles:
- **IRQ during bringup**: Delegates to C via `@ffiDoBringup`
- **IRQ during operation**: Processes requests, delegates complex ops to C
- **Virtualizer notifications**: Dequeues and processes block requests

#### `fun process_blk_request(1 was_irq)`
Core request processing:
- Handles FLUSH/BARRIER as no-ops
- Delegates READ/WRITE to C (requires command sending)
- Manages request lifecycle (dequeue, process, enqueue response)

#### `fun blk_dequeue_req()` / `fun blk_enqueue_resp(...)`
Direct queue manipulation for optimal performance:
- Reads/writes queue head/tail pointers
- Accesses queue entries directly via pointer arithmetic
- Uses memory barriers (`THREAD_MEMORY_RELEASE()`) before tail updates

#### `fun read_reg32(1 offset)` / `fun write_reg32(1 offset, 1 value)`
Hardware register access helpers:
- Direct memory load/store operations
- Calculates register addresses from base + offset

#### `fun check_interrupt_status(1 has_data)`
Interrupt status checking and clearing:
- Detects error conditions (bits 16-31)
- Checks for command complete (CC) and transfer complete (TC)
- Returns: 0=success, 1=error, MAX_INT32=waiting

### C FFI Functions (usdhc.c)

#### `void ffiDoBringup(...)`
Called from Pancake during bringup phase:
- Executes `do_bringup()` which runs card initialization

#### `void ffiHandleClient(...)`
Called from Pancake for complex operations:
- Handles READ/WRITE requests that need command sending
- Parameter `clen`: 1=from IRQ, 0=from virtualizer notification

## Queue Structures

### Block Request Queue Entry (32 bytes)
```
Offset  Size  Field
0       4     code (BLK_REQ_READ/WRITE/FLUSH/BARRIER)
4       4     (padding)
8       8     paddr (physical address for DMA)
16      8     block_number
24      2     count (number of blocks)
26      2     (padding)
28      4     id (request ID)
```

### Block Response Queue Entry (16 bytes)
```
Offset  Size  Field
0       4     status (BLK_RESP_OK/ERR_UNSPEC/ERR_NO_DEVICE/ERR_INVALID_PARAM)
4       2     success_count
6       2     (padding)
8       4     id (request ID)
12      4     (padding)
```

### Queue Header (12 bytes)
```
Offset  Size  Field
0       4     head (consumer index)
4       4     tail (producer index)
8       4     signal (notification flag)
```

## Register Access

### uSDHC Register Offsets
```c
DS_ADDR        0x00  /* DMA System Address */
BLK_ATT        0x04  /* Block Attributes (size + count) */
CMD_ARG        0x08  /* Command Argument */
CMD_XFR_TYP    0x0C  /* Command Transfer Type */
CMD_RSP0       0x10  /* Command Response 0 */
PRES_STATE     0x24  /* Present State */
SYS_CTRL       0x2C  /* System Control */
INT_STATUS     0x30  /* Interrupt Status (W1C) */
INT_STATUS_EN  0x34  /* Interrupt Status Enable */
INT_SIGNAL_EN  0x38  /* Interrupt Signal Enable */
MIX_CTRL       0x48  /* Mixer Control */
```

### Key Register Bits
```c
/* Interrupt Status */
INT_STATUS_CC      0x00000001  /* Command Complete */
INT_STATUS_TC      0x00000002  /* Transfer Complete */
INT_ERROR_MASK     0xFFFF0000  /* Error bits [31:16] */

/* Mix Control */
MIX_CTRL_DTDSEL    0x00000010  /* Data Transfer Direction (1=read, 0=write) */
```

## Building

### Enable Pancake Build
```bash
make PANCAKE_BLK_DRIVER=1
```

### Build Process
1. Concatenate `util.🥞` and `usdhc.🥞`
2. Preprocess with `cpp -P`
3. Compile with Pancake compiler (`--target=arm8 --pancake --main_return=true`)
4. Generate assembly (`usdhc_pnk.S`)
5. Assemble to object file
6. Link with C driver object and `pancake_ffi.o`

See `blk_driver.mk` for details.

## Data Flow

### Request Processing Flow
```
1. Virtualizer notification → Pancake notified(ch)
2. Pancake: blk_dequeue_req() → extract request from queue
3. Pancake: Check request type
   - FLUSH/BARRIER → Handle directly, enqueue response
   - READ/WRITE → Call @ffiHandleClient → C handle_client()
4. C: Execute card commands (usdhc_read_blocks/usdhc_write_blocks)
5. C: Wait for IRQ
6. IRQ → Pancake notified(irq_ch)
7. Pancake: @ffiHandleClient → C handle_client(was_irq=true)
8. C: Check interrupt status, enqueue response
9. C/Pancake: Notify virtualizer
```

### Bringup Flow
```
1. init() sets driver_status = DrvStatusBringup
2. C: do_bringup() starts, waits for IRQ
3. IRQ → Pancake notified(irq_ch)
4. Pancake: Check DRIVER_STATUS == DRV_STATUS_BRINGUP
5. Pancake: @ffiDoBringup → C do_bringup()
6. C: Continue card initialization
7. Repeat until complete
8. C: Set driver_status = DrvStatusActive
```

## Performance Optimizations

1. **Direct Register Access**: Pancake code directly loads/stores hardware registers without function call overhead.

2. **Inline Queue Operations**: Queue head/tail updates happen in Pancake without crossing the FFI boundary.

3. **Minimal FFI Calls**: Only complex operations (command sending) call into C. Simple operations (FLUSH/BARRIER) are handled entirely in Pancake.

4. **Memory Barriers**: Strategic use of `THREAD_MEMORY_RELEASE()` ensures correct ordering without excessive synchronization.

5. **Pre-computed Values**: Constants and addresses are pre-loaded into variables for faster access.

## Limitations and Future Work

### Current Limitations
- Complex error handling still in C
- Card state transitions not visible to Pancake
- No Pancake-side timeout handling

### Potential Improvements
- Move more of the hot path to Pancake (if profiling shows benefit)
- Implement Pancake-side simple error recovery
- Add performance counters and instrumentation

## References

- **i.MX8 Reference Manual**: IMX8MDQLQRM, Rev 3.1, 06/2021
- **SD Physical Layer Spec**: Version 9.10, Dec. 2023
- **SD Host Controller Spec**: Version 4.20, July 2018
- **sDDF Block Queue Protocol**: `include/sddf/blk/queue.h`
- **Pancake Language**: See `util/util.🥞` for FFI macros

## Testing

To test the Pancake port:

1. Build with `PANCAKE_BLK_DRIVER=1`
2. Run on target hardware with SD card inserted
3. Verify card detection and initialization
4. Test read/write operations
5. Verify performance matches or exceeds C-only version

## Author Notes

This port demonstrates the **hybrid C/Pancake** approach for complex device drivers where:
- Performance-critical paths benefit from Pancake's low overhead
- Complex protocol logic remains maintainable in C
- FFI provides clean boundaries between the two

The key insight is that not everything needs to be ported to Pancake - only the parts where it provides measurable benefit.
