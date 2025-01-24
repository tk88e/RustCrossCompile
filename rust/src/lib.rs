<<<<<<< HEAD
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
=======

#[no_mangle]
pub extern "C" fn  add(a: usize, b: usize) -> usize {
    a + b
>>>>>>> 8c4aba076fca9929bf29b6bdc1dd63b4059bfafc
}
