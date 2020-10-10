#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
add koolproxyR 1
#git clone https://github.com/tcsr200722/luci-app-koolproxyR.git package/luci-app-koolproxyR
add koolproxyR 2
#git clone https://github.com/tcsr200722/ycg31-luci-app-koolproxyR.git package/luci-app-koolproxyR
add luci-app-filebrowser
git clone https://github.com/tcsr200722/FileBrowser.git package/luci-app-filebrowser
add luci-app-adguardhome 1
#git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
add luci-app-adguardhome 2
#git clone https://github.com/tcsr200722/luci-app-adguardhome-new.git package/luci-app-adguardhome
add luci-app-oaf
#git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf
add luci-app-dockerman
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
add luci-app-oaf
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
add luci-app-argon-config
#git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
add luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
add luci-app-diskman
mkdir -p package/luci-app-diskman && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Makefile -O package/luci-app-diskman/Makefile
mkdir -p package/parted && \
wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/parted/Makefile
./scripts/feeds update -a
./scripts/feeds install -a
