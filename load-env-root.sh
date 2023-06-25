#!/bin/bash
if [[ `whoami` != "root" ]]; then
    echo 请使用 root 权限运行
    exit 1
fi
xhost +
chrootEnvPath=/opt/new-system-env
pardus-chroot $chrootEnvPath
rm $chrootEnvPath/etc/resolv.conf
cp /etc/resolv.conf $chrootEnvPath/etc/resolv.conf
mount --bind /home $chrootEnvPath/home
mount --bind /root $chrootEnvPath/root