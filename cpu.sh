#!/bin/bash
watch -n.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\" && sensors"
