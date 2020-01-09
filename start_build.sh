#usage:
# wget https://raw.githubusercontent.com/AaG7xNnrgbzeyqc5woPS/WhiteNode/master/start_build.sh
# chmod +x start_build.sh
# start_build.sh
#------------------------------------------------

cd ~
sudo apt-get install -y tmux vim tree nano
sudo apt-get install -y git zip unzip lsof
sudo apt-get install -y realpath qemu-user-static

cd ~
git clone https://github.com/AaG7xNnrgbzeyqc5woPS/CustomPiOS.git
git clone https://github.com/AaG7xNnrgbzeyqc5woPS/WhiteNode.git

cd WhiteNode/src/image
wget -c --trust-server-names 'https://downloads.raspberrypi.org/raspbian_lite_latest'
cd ..
../../CustomPiOS/src/update-custompios-paths
sudo modprobe loop
sudo bash -x ./build_dist
