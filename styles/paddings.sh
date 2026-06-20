#!/usr/bin/env bash
# -----------------------------------------------------
# Padding & Spacing Variables
# -----------------------------------------------------
# Naming convention: PAD_<SCOPE>_<SIDE>
#   BAR      -> outer margin between screen edge and first/last item
#   ITEM     -> default gap between any two adjacent items (split L/R)
#   GROUP    -> extra breathing room around a logical cluster (e.g. separator)
#   ICON     -> spacing between an item's icon glyph and its own box edge
#   LABEL    -> spacing between icon and label text, inside one item
#   BG       -> padding inside a colored/background "pill" (spaces, brackets)
#
# Edit values here once; every item in sketchybarrc and the plugins
# pulls from these instead of hardcoding numbers.

# --- Bar outer edges -----------------------------------
export PAD_BAR_LEFT=10
export PAD_BAR_RIGHT=10

# --- Default item-to-item gap ---------------------------
# Actual visual gap = left item's *_RIGHT + right item's *_LEFT
export PAD_ITEM_LEFT=5
export PAD_ITEM_RIGHT=5

# --- Icon <-> label spacing (inside a single item) -------
export PAD_LABEL_LEFT=8
export PAD_LABEL_RIGHT=8
export PAD_ICON_LEFT=7
export PAD_ICON_RIGHT=7

# --- Space indicators (left side, colored pills) ---------
export PAD_SPACE_ICON_LEFT=10
export PAD_SPACE_ICON_RIGHT=10

# --- Separator item --------------------------------------
export PAD_SEPARATOR_LEFT=10
export PAD_SEPARATOR_RIGHT=10

# --- Right-side menu cluster -------------------------------
# Most right-aligned items only need left padding, since they
# push away from whatever sits to their left.
export PAD_RIGHT_ITEM_LEFT=5

# --- Bracket / grouped-background padding -----------------
# Used when multiple items share one pill background (e.g. net+vpn+sound)
export PAD_BG_GROUP_LEFT=4
export PAD_BG_GROUP_RIGHT=4
