#!/usr/bin/env bash

set -euo pipefail

echo -n "Enter old font family (e.g., Linux Libertine): "
IFS= read -r OLD_FONT

if [ -z "${OLD_FONT// }" ]; then
  echo "Error: font family cannot be empty." >&2
  exit 1
fi

echo -n "Enter new font family (e.g., Linux Libertine): "
IFS= read -r NEW_FONT

if [ -z "${NEW_FONT// }" ]; then
  echo "Error: font family cannot be empty." >&2
  exit 1
fi

# 1) GTK settings
GTK_FILE="$PWD/GTK/GTK3.0/settings.ini"
sed -i "s/${OLD_FONT}/${NEW_FONT}/g" "$GTK_FILE"

# 2) Hyprland Hyprpmbars
HYPR_PREFS_FILE="$PWD/Hyprland/userprefs.conf"
sed -i "s/${OLD_FONT}/${NEW_FONT}/g" "$HYPR_PREFS_FILE"

# 3) Hyprland Waybar
HYPR_CSS_FILE="$PWD/Hyprland/user-style.css"
sed -i "s/${OLD_FONT}/${NEW_FONT}/g" "$HYPR_CSS_FILE"

# 4) KDE kdeglobals
KDE_FILE="$PWD/KDE/kdeglobals"
sed -i "s/${OLD_FONT}/${NEW_FONT}/g" "$KDE_FILE"

echo "Done. Updated font family to: $NEW_FONT"


