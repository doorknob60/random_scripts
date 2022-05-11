#!/bin/bash
source ~/bin/display_vars
#nvidia-settings -a CurrentMetaMode="$DESK_DISPLAY_PRI: $PRI_RES +0+0 { ForceCompositionPipeline = Off }"
#nvidia-settings -a CurrentMetaMode="$DESK_DISPLAY_PRI: ${PRI_RES}_${PRI_RATE} +0+0 { ForceFullCompositionPipeline = On }"
xrandr --output $DESK_DISPLAY_SEC --mode $SEC_RES --rate $SEC_RATE --scale-from $SEC_RES --primary --output $DESK_DISPLAY_PRI --off
#xrandr --output $DESK_DISPLAY_SEC --off
#xrandr --output $TV_DISPLAY --off
#xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s monitor-0
#killall xfce4-panel
#xfce4-panel &
#kilall compton
#compton --backend glx --vsync opengl-swc &
#pacmd set-default-sink "$DESK_AUDIO"
#/home/austin/bin/pulseaudioswitch.sh "$DESK_AUDIO"
