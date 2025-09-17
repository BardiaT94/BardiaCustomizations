#!/bin/bash

# ==============================================================================
# A script to copy configuration files and folders to a backup directory.
# It will automatically overwrite existing files at the destination.
# ==============================================================================

echo "🚀 Starting backup..."

echo "Removing existing backup directory..."
rm -rf "$PWD/Fonts"
rm -rf "$PWD/Hyprland"
rm -rf "$PWD/InkScape"
rm -rf "$PWD/Kitty"
rm -rf "$PWD/Xilinx"
rm -rf "$PWD/LaTeX"
rm -rf "$PWD/GTK"
rm -rf "$PWD/Thunar"
rm -rf "$PWD/KDE"
rm -rf "$PWD/Spicetify"

echo "Ensuring destination directories are ready..."
mkdir -p "$PWD/Hyprland"
mkdir -p "$PWD/InkScape"
mkdir -p "$PWD/Kitty"
mkdir -p "$PWD/Xilinx"
mkdir -p "$PWD/LaTeX"
mkdir -p "$PWD/GTK"
mkdir -p "$PWD/Thunar"
mkdir -p "$PWD/KDE"
mkdir -p "$PWD/Spicetify"
mkdir -p "$PWD/Fonts"

echo "Copying Hyprland customizations..."
cp -f "$HOME/.config/hypr/userprefs.conf" "$PWD/Hyprland/"
cp -f "$HOME/.config/hypr/hypridle.conf" "$PWD/Hyprland/"
cp -f "$HOME/.config/hypr/monitors.conf" "$PWD/Hyprland/"
echo "Copying Waybar customizations..."
cp -f "$HOME/.local/share/waybar/layouts/hyprdots/BardiaWaybar.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.config/waybar/user-style.css" "$PWD/Hyprland/"

echo "Copying Fonts folder..."
cp -rf "$HOME/.fonts/." "$PWD/Fonts"

echo "Copying InkScape palettes..."
cp -rf "$HOME/.config/inkscape/palettes" "$PWD/InkScape"

echo "Copying Kitty customizations..."
cp -rf "$HOME/.config/kitty/." "$PWD/Kitty"

echo "Copying Xilinx themes..."
cp -rf "$HOME/.Xilinx/Vivado/2025.1/themes" "$PWD/Xilinx"
cp -rf "$HOME/.Xilinx/Vivado/2025.1/waveform" "$PWD/Xilinx"

echo "Copying LaTeX Templates..."
cp -rf "$HOME/Desktop/MyPresentations/Templates/." "$PWD/LaTeX"

echo "Copying GTK themes..."
cp -rf "$HOME/.themes" "$PWD/GTK"

echo "Copying Thunar customizations..."
cp -rf "$HOME/.config/Thunar" "$PWD"

echo "Copying KDE customizations..."
cp -f "$HOME/.config/kdeglobals" "$PWD/KDE"

echo "Copying Spicetify customizations..."
cp -rf "$HOME/.config/spicetify/." "$PWD/Spicetify"

echo ""
echo "✅ Backup complete! All files have been copied to $PWD"