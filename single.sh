#!/bin/bash
source ~/bin/display_vars
nvidia-settings -a CurrentMetaMode="$DESK_DISPLAY_PRI: $PRI_RES +0+0 { ForceCompositionPipeline = Off }"
xrandr --output $DESK_DISPLAY_PRI --mode $PRI_RES --rate $PRI_RATE --scale-from $PRI_RES --primary
xrandr --output $DESK_DISPLAY_SEC --off
xrandr --output $TV_DISPLAY --off
#xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s monitor-0
#killall xfce4-panel
#xfce4-panel &
#kilall compton
#compton --backend glx --vsync opengl-swc &
#pacmd set-default-sink "$DESK_AUDIO"
#/home/austin/bin/pulseaudioswitch.sh "$DESK_AUDIO"
