#!/bin/bash

# ==============================================================================
# A script to restore configuration files and folders FROM the backup directory
# back to their original locations. It will overwrite existing files.
# ==============================================================================

echo "🚀 Starting restore..."

echo "Restoring Hyprland customizations..."
cp -f "$PWD/Hyprland/userprefs.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/hypridle.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/hyprlock.conf" "$HOME/.config/hypr/"
cp -f "$PWD/Hyprland/monitors.conf" "$HOME/.config/hypr/"

echo "Restoring Waybar customizations..."
cp -f "$PWD/Hyprland/BardiaWaybar.jsonc" "$HOME/.local/share/waybar/layouts/hyprdots/"
cp -f "$PWD/Hyprland/BardiaWaybar.css" "$HOME/.local/share/waybar/styles/"
cp -f "$PWD/Hyprland/spotify.xml" "$HOME/.local/share/waybar/menus/"
cp -f "$PWD/Hyprland/custom-workflows.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/group-volumecontrol.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/custom-sensorsinfo.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/hyprland-workspaces.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/network.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/custom-weather.jsonc" "$HOME/.local/share/waybar/modules/"
cp -f "$PWD/Hyprland/network#bandwidth.jsonc" "$HOME/.local/share/waybar/modules/"

echo "Restoring CPUinfo.sh and GPUinfo.sh..."
cp -f "$PWD/Hyprland/cpuinfo.sh" "$HOME/.local/lib/hyde/"
cp -f "$PWD/Hyprland/gpuinfo.sh" "$HOME/.local/lib/hyde/"

echo "Restoring Fonts folder..."
cp -rf "$PWD/Fonts/." "$HOME/.fonts"

echo "Restoring InkScape palettes..."
cp -rf "$PWD/InkScape/palettes" "$HOME/.config/inkscape/"

echo "Restoring Kitty customizations..."
cp -rf "$PWD/Kitty/." "$HOME/.config/kitty"

echo "Restoring MPV customizations..."
cp -rf "$PWD/MPV/." "$HOME/.config/mpv"

echo "Restoring Xilinx themes and waveform..."
cp -rf "$PWD/Xilinx/themes/" "$HOME/.Xilinx/Vivado/2025.1"
cp -rf "$PWD/Xilinx/waveform/" "$HOME/.Xilinx/Vivado/2025.1"

echo "Restoring Thunar customizations..."
cp -rf "$PWD/Thunar" "$HOME/.config"

echo ""
echo "✅ Restore complete! All files have been copied back from $PWD"


