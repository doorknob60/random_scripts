#!/bin/bash
source ~/bin/display_vars
xrandr --output $TV_DISPLAY --off
xrandr --output $DESK_DISPLAY_PRI --mode $PRI_RES --rate $PRI_RATE --scale-from $PRI_RES --primary --pos 0x0
xrandr --output $DESK_DISPLAY_SEC --mode $SEC_RES --rate $SEC_RATE --scale-from $SEC_RES --pos 2560x240 
#nvidia-settings -a CurrentMetaMode="$DESK_DISPLAY_PRI: $PRI_RES +0+0 { ForceCompositionPipeline = On }, $DESK_DISPLAY_SEC: $SEC_RES +2560+240 { ForceCompositionPipeline = On }"
#xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s monitor-0
#killall xfce4-panel
#xfce4-panel &
#kilall compton
#compton --backend glx --vsync opengl-swc &
#pacmd set-default-sink "$DESK_AUDIO"
#/home/austin/bin/pulseaudioswitch.sh "$DESK_AUDIO"
