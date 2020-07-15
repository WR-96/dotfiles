#!/bin/sh

MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')

# Terminate already running bar instances
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar.log
polybar main >>/tmp/polybar.log 2>&1 &
