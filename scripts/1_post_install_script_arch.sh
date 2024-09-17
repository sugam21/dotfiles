#!/bin/sh
sudo pacman -Syu --noconfirm

echo "Installing zsh theme"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Installing multimedia codec"
sudo pacman -S --noconfirm gst-libav gst-plugins-good gst-plugins-bad gst-plugins-ugly

echo "Installing firewall"
sudo pacman -S --noconfirm ufw
sudo ufw enable

echo "Installing battery saver"
sudo pacman -S --noconfirm tlp tlp-rdw
sudo systemctl enable --now tlp

echo "Installing JDK"
sudo pacman -S --noconfirm jdk-openjdk

echo "Cleaning up config files"
cd ~
rm -rf .zshrc
rm -rf .config/nvim
rm -rf .config/tmux
rm -rf .config/wezterm

echo "Applying dotfiles"
cd ~/dotfiles
stow zsh nvim tmux wezterm

echo "Copying the python project initialization script"
sudo cp ~/dotfiles/scripts/python_project/init_project.sh ~/.local/bin

echo "Setting up Git"
git config --global user.email "sugams342@gmail.com"
git config --global user.name "Sugam"

echo "Installing Github CLI"
sudo pacman -S --noconfirm github-cli
