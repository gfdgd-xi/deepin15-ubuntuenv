#!/bin/bash
chrootEnvPath=/opt/new-system-env
if [[ ! -f /usr/bin/pardus-chroot ]]; then
    echo 请安装 pardus-chroot 后再试
    exit 1
fi
if [[ ! -d $chrootEnvPath ]]; then
    echo Chroot 环境不存在，请部署环境后再试
    exit 1
fi
echo aa > /tmp/env-$USER.txt
if [[ ! -f $chrootEnvPath/tmp/env-$USER.txt ]]; then
    echo 未挂载目录，立即挂载
    sudo ./load-env-root.sh
fi
#user=`whoami`
if [[ ! -f $chrootEnvPath/user/$USER ]]; then
    ./load-env-user-root.sh
    if [[ $? != 0 ]]; then
        echo Create User Error!
        exit 1
    fi
    sudo mkdir $chrootEnvPath/user/ -p #$USER
    sudo touch $chrootEnvPath/user/$USER
fi