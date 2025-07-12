#!/bin/sh

mkdir /mnt/host
mount -t 9p -o trans=virtio host0 /mnt/host