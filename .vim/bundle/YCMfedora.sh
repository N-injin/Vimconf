#!/bin/bash
cd ./youcompleteme
git submodule update --init --recursive
sudo dnf install automake gcc gcc-c++ kernel-devel cmake
sudo dnf install python-devel python3-devel
./install.py --all
