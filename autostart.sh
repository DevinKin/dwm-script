#!/bin/bash

# 配置环境变量和输入法
export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export EDITOR=vim
exec fcitx &

# 半透明
compton -b

# 随机取出一张壁纸
feh --recursive --bg-fill --randomize ~/wallpapers

# 自动更换壁纸
/bin/bash ~/wallpapers/wallpaper.sh &

/bin/bash ~/scripts/dwm-status.sh &

exec dwm

