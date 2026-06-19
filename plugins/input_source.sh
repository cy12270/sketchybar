#!/usr/bin/env bash

# Fetch the raw ID from your custom binary
RAW_SOURCE=$(/usr/local/bin/inputsource)

# Map long bundle IDs to compact text display
case "$RAW_SOURCE" in
  # --- Japanese Layouts ---
  *"Kotoeri.RomajiTyping.Japanese"|*"Kotoeri.Japanese"|*"Japanese.base")
    LABEL="あ" # Hiragana 'A' for Japanese Native Mode
    ;;
  *"Kotoeri.Roman"|*"Japanese.Roman")
    LABEL="EN" # English/ASCII input mode inside Japanese methods
    ;;

  # --- Chinese Layouts ---
  *"TYIM.Cangjie")
    LABEL="倉" # Traditional Cangjie (Cang)
    ;;
  *"TYIM.Sucheng")
    LABEL="速" # Quick/Sucheng (Su)
    ;;

  # --- System / Utility Layouts ---
  *"UnicodeHexInput")
    LABEL="HEX" # Unicode Hex Input
    ;;
  *"keylayout.US")
    LABEL="US"
    ;;
  *"keylayout.ABC")
    LABEL="ABC"
    ;;

  # --- Fallback ---
  *)
    # Extract the very last segment if a new, unmapped source is used
    LABEL=$(echo "$RAW_SOURCE" | awk -F. '{print $NF}')
    ;;
esac

# Update SketchyBar with the clean label
sketchybar --set "$NAME" label="$LABEL"
