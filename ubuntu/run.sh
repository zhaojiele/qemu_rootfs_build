#!/bin/sh

#if use drive which if=ide, set root to /dev/sda1
#if use drive which if=virtio, set root to /dev/vda1

qemu-system-x86_64 \
	-m 512M \
	-smp 4 \
	-kernel bzImage \
	-nographic -drive file=rootfs.img,format=raw,index=0,if=ide \
	-append "rw console=ttyS0 root=/dev/sda1 init=/bin/init"
