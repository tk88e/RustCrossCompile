// use std::ffi::{CString, CStr};

pub struct RustSample;

impl RustSample {
    fn new() -> RustSample {
        RustSample {}
    }

    unsafe fn new_raw() -> *mut RustSample {
        Box::into_raw(Box::new(RustSample::new()))
    }

    fn destroy(&mut self) {
        unsafe {
            Box::from_raw(self as *mut RustSample);
        }
    }

    pub fn twice_value(val: u32) -> u32 {
        (val * 2).clone()
    }
}
