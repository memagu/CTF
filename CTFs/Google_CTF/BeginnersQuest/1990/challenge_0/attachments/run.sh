#!/bin/sh

if [ $# -eq 0 ]
then
  echo "Usage:" $0 "<9front.qcow2>"
  exit 1
fi

qemu-system-x86_64 -cpu host -enable-kvm -m 4096 \
  -device virtio-scsi-pci,id=scsi \
  -drive if=none,id=vd0,file=$1 \
  -device scsi-hd,drive=vd0 \
  -netdev user,id=mynet0,hostfwd=tcp::17019-:17019,hostfwd=tcp::17020-:17020 \
  -device virtio-net-pci,netdev=mynet0


