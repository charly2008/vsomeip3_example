#!/usr/bin/env bash

sudo apt install -y ninja-build;

if [ -d "install" ];then
    rm -rf install;
fi

if [ ! -d "build" ];then
    mkdir build;
else
    rm -rf build;
fi

cd build || exit;
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
ninja -v
ninja install