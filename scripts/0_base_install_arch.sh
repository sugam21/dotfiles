#!/bin/sh
echo "*******************"
echo "* Updating system *"
echo "*******************"
sudo pacman -Syu --noconfirm

echo "***********************"
echo "* Adding Flatpak Repo *"
echo "***********************"
sudo pacman -S --noconfirm flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "*******************************"
echo "* Adding Neovim Unstable Repo *"
echo "*******************************"
sudo pacman -S --noconfirm neovim

echo "*******************************"
echo "* Installing Wezterm         *"
echo "*******************************"
sudo pacman -S --noconfirm wezterm

echo "*******************************"
echo "* Adding Microsoft Edge      *"
echo "*******************************"
yay -S --noconfirm microsoft-edge-stable-bin

echo "*******************************"
echo "*       Adding eza Repo      *"
echo "*******************************"
yay -S --noconfirm eza

echo "*******************************"
echo "* Installing Node.js         *"
echo "*******************************"
sudo pacman -S --noconfirm nodejs npm

echo "*******************************"
echo "* Installing Github CLI      *"
echo "*******************************"
sudo pacman -S --noconfirm github-cli

echo "*******************************"
echo "* Installing Docker          *"
echo "*******************************"
sudo pacman -S --noconfirm docker
sudo systemctl enable --now docker

echo "*******************************"
echo "* Installing other packages  *"
echo "*******************************"
sudo pacman -S --noconfirm stow vlc gimp zsh tmux ripgrep gnome-tweaks bat btop

echo "Installing flatpak packages..."
flatpak install flathub com.microsoft.Edge md.obsidian.Obsidian

echo "*******************************"
echo "* Installing zoxide          *"
echo "*******************************"
yay -S --noconfirm zoxide-bin

echo "*******************************"
echo "* Installing lazygit          *"
echo "*******************************"
yay -S --noconfirm lazygit

echo "*******************************"
echo "* Installing fzf              *"
echo "*******************************"
sudo pacman -S --noconfirm fzf

echo "*******************************"
echo "* Installing poetry           *"
echo "*******************************"
curl -sSL https://install.python-poetry.org | python3 -

echo "*******************************"
echo "* Installing TPM              *"
echo "*******************************"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "*****************Changing default shell to zsh. Make sure to logout and login back to see changes..."
chsh -s $(which zsh)

echo "*******************************"
echo "* Installing oh-my-zsh        *"
echo "*******************************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
