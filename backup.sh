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
rm -rf "$PWD/MPV"
rm -rf "$PWD/Thunar"
rm -rf "$PWD/Xilinx"

echo "Ensuring destination directories are ready..."
mkdir -p "$PWD/Fonts"
mkdir -p "$PWD/Hyprland"
mkdir -p "$PWD/InkScape"
mkdir -p "$PWD/Kitty"
mkdir -p "$PWD/MPV"
mkdir -p "$PWD/Thunar"
mkdir -p "$PWD/Xilinx"

echo "Copying Hyprland customizations..."
cp -f "$HOME/.config/hypr/hypridle.conf" "$PWD/Hyprland/"
cp -f "$HOME/.config/hypr/hyprlock.conf" "$PWD/Hyprland/"
cp -f "$HOME/.config/hypr/monitors.conf" "$PWD/Hyprland/"
cp -f "$HOME/.config/hypr/userprefs.conf" "$PWD/Hyprland/"

echo "Copying Waybar customizations..."
cp -f "$HOME/.local/share/waybar/layouts/hyprdots/BardiaWaybar.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/styles/BardiaWaybar.css" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/menus/spotify.xml" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/custom-workflows.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/group-volumecontrol.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/custom-sensorsinfo.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/hyprland-workspaces.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/network.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/custom-weather.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/share/waybar/modules/network#bandwidth.jsonc" "$PWD/Hyprland/"
cp -f "$HOME/.local/lib/hyde/cpuinfo.sh" "$PWD/Hyprland/"
cp -f "$HOME/.local/lib/hyde/gpuinfo.sh" "$PWD/Hyprland/"


echo "Copying Fonts folder..."
cp -rf "$HOME/.fonts/." "$PWD/Fonts"

echo "Copying InkScape palettes..."
cp -rf "$HOME/.config/inkscape/palettes" "$PWD/InkScape"

echo "Copying Kitty customizations..."
cp -rf "$HOME/.config/kitty/." "$PWD/Kitty"

echo "Copying MPV customizations..."
cp -rf "$HOME/.config/mpv/." "$PWD/MPV"

echo "Copying Xilinx themes..."
cp -rf "$HOME/.Xilinx/Vivado/2025.1/themes/." "$PWD/Xilinx"
cp -rf "$HOME/.Xilinx/Vivado/2025.1/waveform/." "$PWD/Xilinx"

echo "Copying Thunar customizations..."
cp -rf "$HOME/.config/Thunar" "$PWD"

echo ""
echo "✅ Backup complete! All files have been copied to $PWD"