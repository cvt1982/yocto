#!/bin/bash

# Abort on error
set -e

ORG=$(pwd)

# Get yocto base repository
git clone git://git.yoctoproject.org/poky
cd poky
git checkout jethro

# Save the root folder of the repository
YOCTO_ROOT=$(pwd)

git clone git://git.yoctoproject.org/meta-raspberrypi
cd meta-raspberrypi
git checkout jethro

cd $YOCTO_ROOT

git clone git://git.yoctoproject.org/meta-mono
cd meta-mono
git checkout jethro

cd $YOCTO_ROOT

git clone git://git.openembedded.org/meta-openembedded
cd meta-openembedded
git checkout jethro

cd $YOCTO_ROOT

git clone https://github.com/cvt1982/yocto-meta.git
git clone https://github.com/cvt1982/yocto-conf.git

cd $YOCTO_ROOT

# Create symlinks to build/conf
mkdir -p build/conf
ln -s $YOCTO_ROOT/yocto-conf/conf/bblayers.conf build/conf/bblayers.conf
ln -s $YOCTO_ROOT/yocto-conf/conf/local.conf    build/conf/local.conf
ln -s $YOCTO_ROOT/yocto-conf/conf/site.conf     build/conf/site.conf
