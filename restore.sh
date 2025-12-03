#!/bin/bash

# ==============================================================================
# A script to restore configuration files and folders FROM the backup directory
# back to their original locations. It will overwrite existing files.
# ==============================================================================

echo "🚀 Starting restore..."

echo "Restoring Hyprland and Waybar customizations..."
cp -f "$PWD/Hyprland/userprefs.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/BardiaWaybar.jsonc" "$HOME/.local/share/waybar/layouts/hyprdots/"
cp -f "$PWD/Hyprland/hypridle.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/monitors.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/user-style.css" "$HOME/.config/waybar/"

echo "Restoring Fonts folder..."
cp -rf "$PWD/Fonts/." "$HOME/.fonts"

echo "Restoring InkScape palettes..."
cp -rf "$PWD/InkScape/palettes" "$HOME/.config/inkscape/"

echo "Restoring Kitty customizations..."
cp -rf "$PWD/Kitty/." "$HOME/.config/kitty"

echo "Restoring Xilinx themes and waveform..."
cp -rf "$PWD/Xilinx/themes/" "$HOME/.Xilinx/Vivado/2025.1"
cp -rf "$PWD/Xilinx/waveform/" "$HOME/.Xilinx/Vivado/2025.1"

echo "Restoring GTK themes..."
cp -rf "$PWD/GTK/.themes" "$HOME"

echo "Restoring Thunar customizations..."
cp -rf "$PWD/Thunar" "$HOME/.config"

echo "Restoring KDE customizations..."
cp -f "$PWD/KDE/kdeglobals" "$HOME/.config/kdeglobals"

echo "Restoring Spicetify customizations..."
cp -rf "$PWD/Spicetify/." "$HOME/.config/spicetify"

echo ""
echo "✅ Restore complete! All files have been copied back from $PWD"


