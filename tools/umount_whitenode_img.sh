#!/bin/bash
#-----------------------------
#filename: umount_whitenode_img.sh
#卸载 mount_whitenode_img.sh 安装的镜像文件
#请在使用 mount_whitenode_img.sh 后使用
#为了安全起见,不删除 mount_whitenode_img.sh建立的安装目录 ${mnt}/{fat,ext4}
#----------------------------------------------------
# usage1:
# umount_whitenode_img.sh mnt_path
# para:
# mnt_path:   $1
# 程序需要root权限
#-----------------------------------
# usage2:
# wget https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/WhiteNode/master/tools/umount_whitenode_img.sh
# chmod +x umount_whitenode_img.sh
# umount_whitenode_img.sh mnt_path
#-----------------------------------

mnt=$1

echo 注释:如果卸载出错,请退出占用镜像文件的程序
echo

echo "1.显示镜像安装状况"
sudo losetup -a
sudo ls /dev/mapper

echo "2. now start umount ..."
sudo umount ${mnt}/fat ${mnt}/ext4
#sudo umount ${mnt}/{fat,ext4} #Other way
echo "umount ok..."

echo "3. now start mount_whitenode_img.sh"
sudo  kpartx -d /dev/loop5
echo "kpartx delete ok ..."

echo "4. now start losetup -d /dev/loop5 ..."
sudo losetup -d /dev/loop5
echo "losetup delete ok ..."

#sudo losetup -a
echo ...All done!
