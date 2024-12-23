#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#if type "xrandr"; then
#    for m in $(polybar --list-monitors | cut -d":" -f1); do
#        MONITOR=$m polybar --reload bar1 &
#    done  
#else
#  polybar --reload bar1 &
#fi

polybar --reload bar1 &
