#!/bin/bash
xdg-mime default nautilus*.desktop inode/directory application/x-gnome-saved-search
gsettings set org.nemo.desktop show-desktop-icons false
gsettings set org.gnome.desktop.background show-desktop-icons true