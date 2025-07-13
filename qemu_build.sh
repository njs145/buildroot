#!/bin/sh

make qemu_aarch64_virt_defconfig
utils/config -e BR2_TARGET_ROOTFS_CPIO
utils/config -e BR2_TARGET_ROOTFS_CPIO_GZIP
make olddefconfig
# echo "The build is running in the background. To check on it, run: tmux attach -t build_root-build"
# echo "To detach and return to your shell, press Ctrl + b, then d."
# tmux new-session -d -s build_root-build \
make
