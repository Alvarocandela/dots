#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &
if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
    polybar -q second -c "$DIR"/config.ini &
fi
