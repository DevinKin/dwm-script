#!/bin/bash

/usr/bin/amixer -c 1 set Master 5%- umute

/bin/bash ~/scripts/dwm-status-refresh.sh 
