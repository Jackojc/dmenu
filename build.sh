#!/usr/bin/env sh

build_depends="libX11-devel libXinerama-devel libXft-devel"
build_remove="libXinerama-devel libXft-devel"
depends="libXinerama libXft libX11"

sudo xbps-install -S $build_depends $depends

make clean
make

sudo xbps-remove -R $build_remove
