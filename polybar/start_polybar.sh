#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar left -r 2>&1 | tee -a /tmp/polybar.log & disownpolybar left -r 2>&1 | tee -a /tmp/polybar.log & disown

polybar center -r 2>&1 | tee -a /tmp/polybar.log & disown
echo "Polybar launched..."

polybar right -r 2>&1 | tee -a /tmp/polybar.log & disown

