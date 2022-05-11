#!/bin/sh
source=`pacmd list-sources|awk '/index:/ {print $0} /name:/ {print $0};'|grep '<alsa_input.pci-0000_0d_00.4.analog-stereo>' -B 1|head -n 1|cut -d \: -f 2|xargs`

echo $source

pacmd load-module module-loopback source=$source
