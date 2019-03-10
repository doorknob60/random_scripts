#!/bin/bash
#if [ `qdbus org.kde.kwin /KWin compositingActive` == "true" ]; then
#	qdbus org.kde.kwin /KWin toggleCompositing
#fi
#killall compton
xrandr --output HDMI-0 --mode 1280x720
xrandr --output DVI-D-0 --off --output VGA-0 --off
#killall xfce4-panel
#xfce4-panel &
killall compton
#compton --backend glx --vsync opengl-swc &
pacmd set-default-sink "alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1"
/home/austin/bin/pulseaudioswitch.sh "alsa_output.pci-0000_01_00.1.hdmi-stereo-extra1"
