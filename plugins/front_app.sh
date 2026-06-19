#!/usr/bin/env bash

# The $INFO variable is automatically populated by SketchyBar 
# with the name of the newly focused application.
if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" label="$INFO"
fi
