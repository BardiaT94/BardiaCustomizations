#!/usr/bin/env bash

FONT="Exo 2"
MONOSPACE_FONT="Hurmit Nerd Font Mono"
ICON_THEME="kora"
KDE_THEME="CachyOS-Nord"
GTK_THEME="Catppuccin-Mocha-Dark"

# 2) Hyprland Hyprpmbars
sed -i "s/bar_text_font = .*/bar_text_font = ${FONT}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/font-family: \".*\"/font-family: \"${FONT}\"/g" "$HOME/.local/share/waybar/styles/BardiaWaybar.css"
sed -i "s/\$FONT = .*/\$FONT = ${FONT}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/\$MONOSPACE_FONT = .*/\$MONOSPACE_FONT = ${MONOSPACE_FONT}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/\$BAR_FONT = .*/\$BAR_FONT = ${FONT}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/\$MENU_FONT = .*/\$MENU_FONT = ${FONT}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/\$NOTIFICATION_FONT = .*/\$NOTIFICATION_FONT = ${MONOSPACE_FONT}/g" "$HOME/.config/hypr/userprefs.conf"

sed -i "s/\$ICON_THEME = .*/\$ICON_THEME = ${ICON_THEME}/g" "$HOME/.config/hypr/userprefs.conf"
sed -i "s/\$GTK_THEME = .*/\$GTK_THEME = ${GTK_THEME}/g" "$HOME/.config/hypr/userprefs.conf"


# 3) KDE 
kwriteconfig6 --file kdeglobals --group "General" --key "font" "${FONT},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1"
kwriteconfig6 --file kdeglobals --group "General" --key "menuFont" "${FONT},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1"
kwriteconfig6 --file kdeglobals --group "General" --key "smallestReadableFont" "${FONT},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1"
kwriteconfig6 --file kdeglobals --group "General" --key "toolBarFont" "${FONT},10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1"

kwriteconfig6 --file kdeglobals --group "KDE" --key "LookAndFeelPackage" "${KDE_THEME}"
kwriteconfig6 --file kdeglobals --group "Icons" --key "Theme" "${ICON_THEME}"


echo "✅ Done."


