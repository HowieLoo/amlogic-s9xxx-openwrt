#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git packages https://github.com/immortalwrt/packages.git^4d9500cb61a224d88c71cf795af2e367235b3ac0' feeds.conf.default
sed -i '$a src-git luci https://github.com/immortalwrt/luci.git^c60cfb5754a72d1ec93041fb8ef69c05695b51f5' feeds.conf.default
sed -i '$a src-git routing https://github.com/openwrt/routing.git^e87b55c6a642947ad7e24cd5054a637df63d5dbe' feeds.conf.default
sed -i '$a src-git telephony https://github.com/openwrt/telephony.git^fd605af7143165a2490681ec1752f259873b9147' feeds.conf.default
# other
# rm -rf package/emortal/{autosamba,ipv6-helper}

