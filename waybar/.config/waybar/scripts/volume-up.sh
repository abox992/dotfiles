#!/bin/bash

vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')
if [ "$vol" -lt 100 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
fi 
