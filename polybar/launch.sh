#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar --reload top -c ~/.config/polybar/config_top.ini &
polybar --reload bottom -c ~/.config/polybar/config_bottom.ini &

