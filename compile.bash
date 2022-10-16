#!/usr/bin/env bash

if [ -d "./install" ];then
    rm -rf install;
fi

if [ ! -d "./build" ];then
    mkdir build;
else
    rm -rf build;
fi

cd build;
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..
ninja -v
ninja install