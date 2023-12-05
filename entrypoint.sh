#!/bin/env bash

git clone git://git.yoctoproject.org/poky
sleep 10

cd poky

source oe-init-build-env

bitbake core-image-minimal
#ENTRYPOINT sleep "infinity"
