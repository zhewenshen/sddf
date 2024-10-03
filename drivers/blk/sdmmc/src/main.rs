#![no_std]  // Don't link the standard library
#![no_main] // Don't use the default entry point

extern crate alloc;

mod sddf_blk;

use core::{future::{self, Future}, pin::{self, Pin}, task::{Context, Poll, RawWaker, RawWakerVTable, Waker}};

use alloc::boxed::Box;
use sddf_blk::{blk_dequeue_req_helper, blk_enqueue_resp_helper, blk_queue_empty_req_helper, blk_queue_full_resp_helper, blk_queue_init_helper, BlkOp, BlkStatus};
use sdmmc_hal::meson_gx_mmc::MesonSdmmcRegisters;

use sdmmc_protocol::sdmmc::{self, SdmmcHalError, SdmmcHardware, SdmmcProtocol};
use sel4_microkit::{debug_print, debug_println, protection_domain, Channel, Handler, Infallible};

const SDMMC_BASE_ADDR: *mut MesonSdmmcRegisters = 0xffe05000 as *mut MesonSdmmcRegisters;
const DATA_ADDR: *mut u8 = 0x50000000 as *mut u8;

const BLK_VIRTUALIZER: sel4_microkit::Channel = sel4_microkit::Channel::new(0);

fn print_one_block(ptr: *const u8) {
    unsafe {
        // Iterate over the 512 bytes and print each one in hexadecimal format
        for i in 0..512 {
            let byte = *ptr.add(i);
            if i % 16 == 0 {
                debug_print!("\n{:04x}: ", i);
            }
            debug_print!("{:02x} ", byte);
        }
        debug_println!();
    }
}

// No-op waker implementations, they do nothing.
unsafe fn noop(_data: *const ()) {}
unsafe fn noop_clone(_data: *const ()) -> RawWaker {
    RawWaker::new(_data, &VTABLE)
}

// A VTable that points to the no-op functions
static VTABLE: RawWakerVTable = RawWakerVTable::new(
    noop_clone,
    noop,
    noop,
    noop,
);

// Function to create a dummy Waker
fn create_dummy_waker() -> Waker {
    let raw_waker = RawWaker::new(core::ptr::null(), &VTABLE);
    unsafe { Waker::from_raw(raw_waker) }
}

#[protection_domain(heap_size = 0x10000)]
fn init() -> HandlerImpl<'static, MesonSdmmcRegisters> {
    debug_println!("Driver init!");
    unsafe {
        blk_queue_init_helper();
    }
    let meson_hal: &mut MesonSdmmcRegisters = MesonSdmmcRegisters::new();
    let protocol: SdmmcProtocol<'static, MesonSdmmcRegisters> = SdmmcProtocol::new(meson_hal);
    HandlerImpl {
        future: None,
        sdmmc: Some(protocol),
    }
}

struct HandlerImpl<'a, T: SdmmcHardware> {
    future: Option<Pin<Box<dyn Future<Output = (Result<(), SdmmcHalError>, Option<SdmmcProtocol<'a, T>>)> + 'a>>>,
    sdmmc: Option<SdmmcProtocol<'a, T>>,
}

impl<'a, T: SdmmcHardware> Handler for HandlerImpl<'a, T> {
    type Error = Infallible;

    /// In Rust, it is actually very hard to manage long live future object that must be created
    /// by borrowing 
    fn notified(&mut self, channel: Channel) -> Result<(), Self::Error> {
        match channel {
            BLK_VIRTUALIZER => {
                // If the future is some, block itself
                // Since we polling on 
                if self.future.is_some() {
                    debug_println!("SDMMC_DRIVER: The future should not exists here!!!");
                    return Ok(())
                }
                unsafe {
                    // If request queue is empty or resp queue is full, do not dequeue request
                    if blk_queue_empty_req_helper() > 0 || blk_queue_full_resp_helper() > 0 {
                        return Ok(())
                    }
                }
                while unsafe { blk_queue_empty_req_helper() == 0 && blk_queue_full_resp_helper() == 0 } {
                    // Assume we magically get the value from sddf
                    let mut request_code: BlkOp = BlkOp::BlkReqRead;
                    let mut io_or_offset: u64 = 0;
                    let mut block_number: u32 = 0;
                    let mut count: u16 = 0;
                    let mut id: u32 = 0;
                    unsafe {
                        blk_dequeue_req_helper(
                            &mut request_code as *mut BlkOp,
                            &mut io_or_offset as *mut u64,
                            &mut block_number as *mut u32,
                            &mut count as *mut u16,
                            &mut id as *mut u32,
                        );
                    }

                    match request_code {
                        BlkOp::BlkReqRead => {
                            // This match in the loop might seems to be ineffient here as the correct way is create future first and polling on that
                            // future. But as the driver would soon change into poll on interrupt instead of polling until finish, so just leave it for now
                            loop {
                                match &mut self.future {
                                    Some(future) => {
                                        let waker = create_dummy_waker();
                                        let mut cx = Context::from_waker(&waker);
                                        // TODO: I can get rid of this loop once I configure out how to enable interrupt from Linux kernel driver
                                        match future.as_mut().poll(&mut cx) {
                                            Poll::Ready((result, sdmmc)) => {
                                                debug_println!("SDMMC_DRIVER: Future completed with result");
                                                self.future = None; // Reset the future once done
                                                self.sdmmc = sdmmc;
                                                if result.is_err() {
                                                    unsafe {
                                                        blk_enqueue_resp_helper(BlkStatus::BlkRespSeekError, 0, id);
                                                    }
                                                }
                                                else {
                                                    unsafe {
                                                        blk_enqueue_resp_helper(BlkStatus::BlkRespOk, count as u32, id);
                                                    }
                                                }
                                                break;
                                            }
                                            Poll::Pending => {
                                                debug_println!("SDMMC_DRIVER: Future is not ready, polling again...");
                                            }
                                        }
                                        // Send the result back to sddf_blk here
                                    }
                                    None => {
                                        if let Some(sdmmc) = self.sdmmc.take() {
                                            self.future = Some(Box::pin(sdmmc.read_block(count as u32, block_number as u64, io_or_offset)));
                                        }
                                        else {
                                            panic!("SDMMC_DRIVER: No sdmmc when future is not available which is an undefined state")
                                        }
                                    }
                                }
                            }
                        }
                        BlkOp::BlkReqWrite => {
                            debug_println!("SDMMC_DRIVER: CARD IS READ ONLY FOR NOW!");
                        },
                        BlkOp::BlkReqFlush => return Ok(()),
                        BlkOp::BlkReqBarrier => return Ok(()),
                    }
                    // Notify the virtualizer when there are results available
                    BLK_VIRTUALIZER.notify();
                }
            }
            _ => {
                debug_println!("SDMMC_DRIVER: MESSAGE FROM UNKNOWN CHANNEL: {}", channel.index());
            }
        }
        Ok(())
    }
}