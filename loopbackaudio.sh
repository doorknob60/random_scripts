#!/bin/sh
sleep 5
source=`pacmd list-sources|awk '/index:/ {print $0} /name:/ {print $0};'|grep '<alsa_input.pci-0000_00_1f.3.analog-stereo>' -B 1|head -n 1|cut -d \: -f 2|xargs`

echo $source

pacmd load-module module-loopback latency_msec=5 source=$source
