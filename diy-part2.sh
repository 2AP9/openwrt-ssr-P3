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
sed -i 's/192.168.1.1/192.168.50.7/g' package/base-files/files/bin/config_generate

pushd package/lean

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-jd-dailybonus
git clone --depth=1 https://github.com/jerrykuku/node-request
git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus

# FileBrowser
git clone https://github.com/project-openwrt/FileBrowser.git package/mine/FileBrowser

popd
