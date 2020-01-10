#!/bin/bash
#挂载whitenode脚本
#脚本名字: mount_whitenode_img.sh
#$1 参数:  image file
#$2 挂载路径: mnt dir

#usage:
# sudo ./mount_whitenode_image.sh img mnt 
# need root 权限   

img=$1
mnt=$2
echo "Image Name: ${img}"
echo "Mount path: ${mnt}"

sudo mkdir -pv ${mnt}/fat
sudo mkdir -pv ${mnt}/ext4

sudo losetup --show /dev/loop5 ${img}
sudo kpartx -va /dev/loop5
ls /dev/mapper
sudo mount /dev/mapper/loop5p1 ${mnt}/fat
sudo mount /dev/mapper/loop5p2 ${mnt}/ext4
echo "${img} image is mounted at path ${mnt} now! "
echo "Please ls ${mnt} for see this image file! 
