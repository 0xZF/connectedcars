#!/bin/sh

sudo apt-get install python-pip
sudo pip install --upgrade git+https://github.com/Maratyszcza/PeachPy
sudo pip install --upgrade git+https://github.com/Maratyszcza/confu

sudo apt install -y ninja-build
sudo apt-get install -y re2c

git clone https://github.com/ninja-build/ninja.git
cd ninja
git checkout release
./configure.py --bootstrap
export NINJA_PATH=$PWD

sudo apt-get install clang

cd
git clone https://github.com/shizukachan/NNPACK.git
cd NNPACK
mkdir build && cd build
export PATH="${PATH}:~/ninja" 
cmake -G Ninja -DBUILD_SHARED_LIBS=on-DCMAKE_C_FLAGS=-march=armv6k ..
ninja
sudo ninja install
cd

sudo apt-get install pkg-config
sudo apt-get install libopencv-dev

#IMPORTANT FIND PKG_CONFIG_PATH, will finish this part of script with testing otherwise everything works fine

#sudo find /  -iname opencv.pc
#export PKG_CONFIG_PATH=/path/to/the/file

git clone https://github.com/shizukachan/darknet-nnpack.git
cd darknet-nnpack
make

wget https://pjreddie.com/media/files/yolov3-tiny.weights

