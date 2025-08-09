#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on
  sketchybar --set $NAME label.color=$CRUST
else
  sketchybar --set $NAME background.drawing=off
  sketchybar --set $NAME label.color=$TEXT
fi
