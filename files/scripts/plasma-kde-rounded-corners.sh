#!/usr/bin/env bash
set -oue pipefail

mkdir -p /tmp/build/rounded
cd /tmp/build/rounded

git clone https://github.com/matinlotfali/KDE-Rounded-Corners
cd KDE-Rounded-Corners
mkdir build
cd build
cmake ..
cmake --build . -j
make install

cd /
rm -rf /tmp/build/rounded