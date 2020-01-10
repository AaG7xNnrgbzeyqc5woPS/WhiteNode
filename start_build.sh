#usage:
# wget https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/WhiteNode/master/start_build.sh
# chmod +x start_build.sh && ./start_build.sh
#------------------------------------------------

cd ~
sudo apt-get install -y tmux vim tree nano
sudo apt-get install -y git zip unzip lsof
sudo apt-get install -y realpath qemu-user-static

cd ~
#git clone https://github.com/AaG7xNnrgbzeyqc5woPS/CustomPiOS.git
git clone https://github.com/Oizopower/CustomPiOS.git
git clone https://github.com/AaG7xNnrgbzeyqc5woPS/WhiteNode.git

#patching
#手工替换
#替换: https://raw.githubusercontent.com/Oizopower/CustomPiOS/CustomPiOS/src/common.sh
#用:  https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/CustomPiOS/CustomPiOS/src/common.sh
#

cd WhiteNode/src/image
wget -c --trust-server-names 'https://downloads.raspberrypi.org/raspbian_lite_latest'
cd ..
../../CustomPiOS/src/update-custompios-paths
sudo modprobe loop
sudo bash -x ./build_dist
