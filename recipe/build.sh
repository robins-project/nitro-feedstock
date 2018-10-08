#!/bin/bash

mkdir build
cd build

# build with c++11
export CXXFLAGS=$(echo $CXXFLAGS | sed "s/-std=c++17//")
export CXXFLAGS="$CXXFLAGS -std=c++11"

cmake -G "Ninja" \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE:STRING=Release \
      ..

ninja install