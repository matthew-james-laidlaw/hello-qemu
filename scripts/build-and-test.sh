if [ "$1" == "aarch64-linux-gnu" ]; then
    cmake -B build/aarch64-linux-gnu -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/aarch64-linux-gnu.cmake
    cmake --build build/aarch64-linux-gnu --config Release --parallel
    qemu-aarch64 -L /usr/aarch64-linux-gnu ./build/aarch64-linux-gnu/bin/calculator_tests
elif [ "$1" == "arm-linux-gnueabi" ]; then
    cmake -B build/arm-linux-gnueabi -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/arm-linux-gnueabi.cmake
    cmake --build build/arm-linux-gnueabi --config Release --parallel
    qemu-arm -L /usr/arm-linux-gnueabi ./build/arm-linux-gnueabi/bin/calculator_tests
elif [ "$1" == "arm-linux-gnueabihf" ]; then
    cmake -B build/arm-linux-gnueabihf -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/arm-linux-gnueabihf.cmake
    cmake --build build/arm-linux-gnueabihf --config Release --parallel
    qemu-arm -L /usr/arm-linux-gnueabihf ./build/arm-linux-gnueabihf/bin/calculator_tests
elif [ "$1" == "riscv64-linux-gnu" ]; then
    cmake -B build/riscv64-linux-gnu -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/riscv64-linux-gnu.cmake
    cmake --build build/riscv64-linux-gnu --config Release --parallel
    qemu-riscv64 -L /usr/riscv64-linux-gnu ./build/riscv64-linux-gnu/bin/calculator_tests
elif [ "$1" == "x86_64-linux-gnu" ]; then
    cmake -B build/x86_64-linux-gnu -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/x86_64-linux-gnu.cmake
    cmake --build build/x86_64-linux-gnu --config Release --parallel
    qemu-x86_64 -L /usr/x86_64-linux-gnu ./build/x86_64-linux-gnu/bin/calculator_tests
fi
