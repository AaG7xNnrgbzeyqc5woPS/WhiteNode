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
echo "Please ls ${mnt} for see this image file! 
