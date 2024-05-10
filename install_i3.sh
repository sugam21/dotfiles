#!/bin/sh
sudo apt-get update && sudo apt-get upgrade
# install flatpak
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install wezterm
flatpak install flathub org.wezfurlong.wezterm

# install sway and waybar
sudo apt-get install sway waybar rofi dunst playerctl swayidle
# for wayland compositor
sudo apt-get install libwlroots-dev
# terminal brightness manager
sudo apt-get install light
# for screenshot
sudo apt-get install grim slurp

# install stow
sudo apt-get install stow
# install polkit agent
sudo apt-get install lxpolkit

# clone the repo
cd ~ && git clone https://github.com/sugam21/dotfiles.git
cd dotfiles
stow .
