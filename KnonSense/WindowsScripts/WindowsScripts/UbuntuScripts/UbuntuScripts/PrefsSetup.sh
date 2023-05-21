#!/bin/bash

# Script Name:                  GitHub
# Author:                       Raphael Chookagian
# Date of latest revision:      05/18/2023
# Purpose:                      Script for preferences and settings for colors, screen locking, etc.. See notes for each script for more information.

# Main

# Deactivate screen locking
gsettings set org.gnome.desktop.screensaver lock-enabled false

# Set dark mode as default
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

# Auto open gnome-terminal on login
mkdir ~/.config/autostart/

touch ~/.config/autostart/gnome-terminal.desktop

sudo cat <<EOL >> ~/.config/autostart/gnome-terminal.desktop
[Desktop Entry]
Type=Application
Exec=gnome-terminal
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_NG]=Terminal
Name=Terminal
Comment[en_NG]=Start Terminal On Startup
Comment=Start Terminal On Startup
EOL

# Set Favorite Apps
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"

# Set Gnome Terminal’s Colors
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

rm gnome-terminal-profiles.dconf


# End
