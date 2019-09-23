FROM alpine:latest

# install all that's needed for the developement
RUN apk add --no-cache clang llvm lld make git

# make the llvm's linker lld into a default linker (clang uses ld for 
# linking)
RUN ln -s /usr/bin/ld.lld /usr/bin/ld

# since clang/llvm does not come with libraries to build baremetal 
# cortex firmwrares we need to provide there and what could be 
# considered a better source than the developer.arm.com itself?
RUN wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2

# unpack & remove the archive
RUN tar xjfv gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2
RUN rm gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2
