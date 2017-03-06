#!/bin/bash

ORG=$(pwd)

# Get yocto base repository
git clone git://git.yoctoproject.org/poky
cd poky
git checkout jethro

# Save the root folder of the repository
YOCTO_ROOT=$(pwd)

git clone git://git.yoctoproject.org/meta-raspberrypi
cd meta-taspberrypi
git checkout jethro

cd $YOCTO_ROOT

git clone git://git.yoctoproject.org/meta-mono
cd meta-mono
git checkout jethro

cd $YOCTO_ROOT

git clone git://git.openembedded.org/meta-openembedded
cd meta-openembedded
git checkout jethro
