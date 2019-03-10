#!/bin/bash
PROFILEPATH=/home/austin/.antimicro
antimicro --tray --profile "$PROFILEPATH/$1.gamecontroller.amgp" &
$2
killall antimicro
