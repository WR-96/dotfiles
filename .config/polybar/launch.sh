#!/bin/sh

# MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

# Terminate already running bar instances
killall -q polybar

# Launch bar
# echo "---" | tee -a /tmp/polybar.log
# polybar main >>/tmp/polybar.log 2>&1 &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload main &
fi
