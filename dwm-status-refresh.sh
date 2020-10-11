print_date() {
    date '+%Y年%m月%d日 %H:%M'
}


print_mem() {
    memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1024))
    echo -e "$memfree"
}


export IDENTIFIER="unicode"

. ~/scripts/dwmbar-functions/dwm-alsa.sh 

xsetroot -name "💿 $(print_mem)MB $(dwm_alsa) $(print_date) "
