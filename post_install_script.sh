#!/bin/sh
sudo apt update -y && sudo apt upgrade -y

echo "Installing zsh theme"
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Installing multimedia codec."
sudo apt install -y ubuntu-restricted-extras

echo "Installing firewall"
sudo apt install -f -y ufw
sudo ufw enable
echo "Installing battery saver."
sudo apt install -y tlp tlp-rdw
echo "Installing jdk"
sudo apt install default-jdk
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm install 22

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
