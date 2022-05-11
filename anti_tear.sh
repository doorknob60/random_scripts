#!/bin/bash
source ~/bin/display_vars
nvidia-settings -a CurrentMetaMode="$DESK_DISPLAY_PRI: ${PRI_RES}_${PRI_RATE} +0+0 { ForceFullCompositionPipeline = On }, $DESK_DISPLAY_SEC: ${SEC_RES}_${SEC_RATE} +2560+360 { ForceFullCompositionPipeline = On }"

