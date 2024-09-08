#!/bin/sh
sudo apt update -y && sudo apt upgrade -y

echo "Installing zsh theme"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

cd ~
rm -rf .zshrc
rm -rf .config/nvim
rm -rf .config/tmux
rm -rf .config/wezterm

cd ~/dotfiles
stow zsh nvim tmux wezterm

 git config --global user.email "sugams342@gmail.com"
 git config --global user.name "Sugam"

	&& sudo apt install gh -y
