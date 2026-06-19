#!/usr/bin/env bash

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ "$MUTED" != "false" ]]; then
  ICON="󰝟" # Modern volume-mute icon
  VOLUME="0" # Optional: force label to 0% when muted
else
  case ${VOLUME} in
    100|[5-9][0-9]) ICON="" ;; # High volume (50-100)
    [1-4][0-9]|[0-9]) ICON="" ;; # Low volume (0-49)
    *) ICON="" ;;
  esac
fi

sketchybar -m \
  --set "$NAME" icon="$ICON" \
  --set "$NAME" label="$VOLUME%"
