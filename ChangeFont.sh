#!/usr/bin/env bash

set -euo pipefail

echo -n "Enter new font family (e.g., Linux Libertine): "
IFS= read -r NEW_FONT

if [ -z "${NEW_FONT// }" ]; then
  echo "Error: font family cannot be empty." >&2
  exit 1
fi

# 1) GTK settings
gsettings set org.gnome.desktop.interface font-name "$NEW_FONT 10"

# 2) Hyprland Hyprpmbars
sed -i "s/bar_text_font = .*/bar_text_font = ${NEW_FONT}/g" "$HOME/.config/hypr/userprefs.conf"

# 3) Hyprland Waybar
sed -i "s/font-family: \".*\"/font-family: \"${NEW_FONT}\"/g" "$HOME/.config/waybar/user-style.css"

# 4) KDE kdeglobals
sed -i "s/font=.*,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1/font=${NEW_FONT},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1/g" "$HOME/.config/kdeglobals"

echo "✅ Done. Updated font family to: $NEW_FONT"


