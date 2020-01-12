#!/bin/bash
#挂载whitenode脚本
#脚本名字: mount_whitenode_img.sh
#$1 参数:  image file
#$2 挂载路径: mnt dir

#usage:
# sudo ./mount_whitenode_image.sh img mnt 
# need root 权限   

#usage2:
# wget https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/WhiteNode/master/tools/mount_whitenode_img.sh 
# sudo chmod +x mount_whitenode_img.sh
# sudo ./mount_whitenode_img.sh img mnt
#---------------------
# 1. ${mnt}目录下创建两个子目录, fat, ext4, 用于挂载img文件的两个分区
# 2. /dev/loop5 被全局使用, 必须未被其它镜像文件占用.所以使用本程序前,最好清除其它镜像.
# 3. 需要 root权限 
#----------------------
#依赖: bash mkdir sudo mount losetup kpartx 
# ubuntu :
# sudo apt-get update
# sudo apt-get upgrade
# sudo apt-get install -y kpartx
# manjaro/arch:
# sudo pacman -Syu
# sudo pacman -S multipath-tools #multipath tools for linux(including kpartx)

#-----------------------
#已知bug:
#1. 在ubuntu 16上 一次不能成功,需要执行两次.才行.
# mount /dev/mapper/loop5p1 ${mnt}/fat 
#mount /dev/mapper/loop5p2 ${mnt}/ext4
#这两条指令会报错, loop5p1, loop5p2不存在,
#sudo kpartx -va /dev/loop5命令不能成功,
#估计有延时,不是等执行完成才返回.
#2. manjaro上运行,没有问题.
#3. 对应的 umount_whitenode_img.sh 没有问题
# --------------------------------


img=$1
mnt=$2
echo "Image Name: ${img}"
echo "Mount path: ${mnt}"

sudo mkdir -pv ${mnt}/fat
sudo mkdir -pv ${mnt}/ext4

sudo losetup --show /dev/loop5 ${img}
sudo kpartx -va /dev/loop5
sudo ls /dev/mapper
sudo mount /dev/mapper/loop5p1 ${mnt}/fat
sudo mount /dev/mapper/loop5p2 ${mnt}/ext4
echo "${img} image is mounted at path ${mnt} now! "
echo "Please ls ${mnt} for see this image file! "
echo

