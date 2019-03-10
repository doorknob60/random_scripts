#!/bin/bash
#if [ `qdbus org.kde.kwin /KWin compositingActive` == "true" ]; then
#	qdbus org.kde.kwin /KWin toggleCompositing
#fi
#killall compton
source ~/bin/display_vars
nvidia-settings -a CurrentMetaMode="$TV_DISPLAY: $TV_RES +0+0 { ForceCompositionPipeline = On }"
xrandr --output $TV_DISPLAY --primary --mode $TV_RES --rate $TV_RATE --scale-from $TV_RES
xrandr --output $DESK_DISPLAY_PRI --off --output $DESK_DISPLAY_SEC --off
xfconf-query -c xfce4-panel -p /panels/panel-1/output-name -s monitor-0
#killall xfce4-panel
#xfce4-panel &
#killall compton
#compton --backend glx --vsync opengl-swc &
pacmd set-default-sink "$TV_AUDIO"
pacmd set-default-sink "$TV_AUDIO_BACKUP"
/home/austin/bin/pulseaudioswitch.sh "$TV_AUDIO"
