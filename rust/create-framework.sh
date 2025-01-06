#/bin/sh

input_type=$1
BUILD_OPTION="release"
LINKER_NAME="librust_sample_functions"

# if [ "${input_type}" = "--dev" ]; then
#     BUILD_OPTION="debug"
# elif [ "${input_type}" != "--release" ]; then
#     echo "Error: Invalid input type specified. Please specify '--release' or '--dev'."
#     exit 1
# fi

## Step.0 Build rust project
cargo build --release

## Step.1 Build FAT binary for macOS
lipo -create \
  -output target/${BUILD_OPTION}/apple-darwin-${LINKER_NAME}.a \
  target/aarch64-apple-darwin/${BUILD_OPTION}/${LINKER_NAME}.a \
  target/x86_64-apple-darwin/${BUILD_OPTION}/${LINKER_NAME}.a

## Step.2 Create XCFramework directory
cp ./build/module.modulemap target/includes
xcodebuild -create-xcframework \
  -library target/${BUILD_OPTION}/apple-darwin-${LINKER_NAME}.a \
  -headers target/includes \
  -library target/x86_64-apple-ios/${BUILD_OPTION}/${LINKER_NAME}.a \
  -headers target/includes \
  -output build/RustSampleFunctions.xcframework 