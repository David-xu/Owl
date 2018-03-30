#!/bin/bash

PWD=$(pwd)
SRC=~/src_build/src/linux-3.12.7

#make -C ${SRC} O=${PWD} allnoconfig
make -C ${SRC} O=${PWD} menuconfig
#make -C ${SRC} O=${PWD} headers_install INSTALL_HDR_PATH=/usr
