#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:13704492:c51af4ef44a7f8bf2d27a06fd9af2f3929a6448a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8910120:f9a59b5e5cad6333cef393d31ce17505f100bfe1 EMMC:/dev/block/bootdevice/by-name/recovery c51af4ef44a7f8bf2d27a06fd9af2f3929a6448a 13704492 f9a59b5e5cad6333cef393d31ce17505f100bfe1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
