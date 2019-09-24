# docker-llvm-arm-none-eabi-builder
Dockerfile for Alpine Linux based machine for building bare-metal Cortex-Mx applications with LLVM
This Dockerfile was made as a part of the following tutorial: https://mightydevices.com/index.php/2019/09/building-bare-metal-stm32l4-firmware-using-clang-llvm/


## How to use this in the build process
0. Open a terminal (console).
1. Build the image from the Dockerfile provided: `docker build -t llvm-arm-none-eabi .`
2. Start this image in the background (detached mode) with the directory sharing: `docker run --name llvm-arm-none-eabi-container --rm -v absolute/path/to/your/project/:/share -d -it llvm-arm-none-eabi sh`
3. Every time you want to build your project then from the console or the IDE issue the following command: `docker exec llvm-arm-none-eabi-container sh -c "cd /share && make"`
4. After your done you can stop the container by issuing: `docker stop llvm-arm-none-eabi-container`
