#!/bin/bash
source ~/bin/wayland/display_vars
$GNOME_RANDR --output $DESK_DISPLAY_PRI --mode $PRI_RES --rate $PRI_RATE --primary --output $DESK_DISPLAY_SEC --off

