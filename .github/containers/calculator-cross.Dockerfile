FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y --no-install-recommends \
        ca-certificates \
        cmake \
        build-essential \
        git \
        ninja-build \
        pkg-config \
        qemu-user \
        qemu-user-static \
        libc6-arm64-cross \
        libc6-armel-cross \
        libc6-armhf-cross \
        libc6-dev-arm64-cross \
        libc6-dev-armel-cross \
        libc6-dev-armhf-cross \
        libc6-dev-riscv64-cross \
        libc6-dev-i386-cross \
        gcc-aarch64-linux-gnu \
        g++-aarch64-linux-gnu \
        gcc-arm-linux-gnueabi \
        g++-arm-linux-gnueabi \
        gcc-arm-linux-gnueabihf \
        g++-arm-linux-gnueabihf \
        gcc-riscv64-linux-gnu \
        g++-riscv64-linux-gnu \
        gcc-i686-linux-gnu \
        g++-i686-linux-gnu \
        g++-x86-64-linux-gnu \
        gcc-x86-64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/x86-linux-gnu \
    && mkdir -p /usr/x64-linux-gnu \
    && ln -sfn /usr/i686-linux-gnu /usr/x86-linux-gnu \
    && ln -sfn /usr/x86_64-linux-gnu /usr/x64-linux-gnu

WORKDIR /workspace
