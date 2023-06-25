#!/bin/bash
chrootEnvPath=/opt/new-system-env
#if [[ `whoami` != "root" ]]; then
#    echo 请使用 root 权限运行
#    exit 1
#fi
command="$@"
#echo $command
sudo chroot $chrootEnvPath sudo -u $USER bash -c "$command"
#echo $@