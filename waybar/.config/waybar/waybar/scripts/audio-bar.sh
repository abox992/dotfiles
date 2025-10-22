#!/bin/bash

# Get volume from PulseAudio
vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Get mute status
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -oP 'yes|no')

# Create bar
bars=$((vol / 10))
empty=$((10 - bars))

# Build the ASCII bar
bar="[ "
for ((i=0; i<bars; i++)); do
    bar+="█"
done
for ((i=0; i<empty; i++)); do
    bar+="░"
done

bar+=" ]"

if [ "$muted" = "yes" ]; then
  icon=""
elif [ "$vol" -lt 50 ]; then
  icon=""
else
  icon=""
fi

# Display with mute indicator
if [ "$muted" = "yes" ]; then
    echo "$icon [$bar] MUTED"
else
    # echo "$icon [$bar] $vol%"
    printf "$icon [$bar] %4d%%\n" $vol
fi
