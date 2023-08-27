#!/bin/bash

# Disable dynamic workspaces
gsettings set org.gnome.mutter dynamic-workspaces false

# Set number of workspaces to 10
gsettings set org.gnome.desktop.wm.preferences num-workspaces 10

# Clear switch-to-application keybindings
for i in {1..10}; do
    gsettings set org.gnome.shell.keybindings "switch-to-application-$i" []
done

# Set switch-to-workspace keybindings
for i in {1..10}; do
    gsettings set org.gnome.desktop.wm.keybindings "switch-to-workspace-$i" "['<Super>$i']"
done

# Set move-to-workspace keybindings
for i in {1..10}; do
    gsettings set org.gnome.desktop.wm.keybindings "move-to-workspace-$i" "['<Super><Shift>$i']"
done
