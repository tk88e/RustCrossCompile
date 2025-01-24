extern crate cbindgen;
use std::env;

fn main(){
    if cfg!(target_os="macos") {
        let crate_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
        cbindgen::generate(crate_dir)
            .expect("Unable to generate bindings")
            .write_to_file("target/includes/RustSampleFunctions.hh");        
    }

    if cfg!(target_os="windows") {
        csbindgen::Builder::default()
        .input_extern_file("src/lib.rs")
        .generate_csharp_file("../windows/WindoesSampleAppNativeMethods.cs")
        .unwrap();
    }


}