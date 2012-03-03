#!/usr/bin/env bash

source "$(dirname ${0})/PKGBUILD"

echo "Getting latest Ubuntu version..."
UBUNTU_VER=($(wget -q 'http://packages.ubuntu.com/precise/source/compizconfig-backend-kconfig' -O - | sed -n 's/.*>compizconfig-backend-kconfig_\(.*\)-\(.*\)\.debian\.tar\.gz<.*/\1 \2/p'))

#echo "Getting latest upstream version..."
#UPSTREAM_VER=$(wget -q "http://ftp.gnome.org/pub/GNOME/sources/gtk+/${pkgver%.*.*}/" -O - | sed -n 's/.*>LATEST-IS-\(.*\)<.*/\1/p')

echo ""

echo -e "PKGBUILD version: ${pkgver%.*} ${_ubuntu_rel}"
#echo -e "Upstream version: ${UPSTREAM_VER}"
echo -e "Upstream version: (none)"
echo -e "Ubuntu version:   ${UBUNTU_VER[@]}"
