#!/bin/sh
echo "*******************"
echo "* Updating system *"
echo "*******************"
sudo apt-get update -y && sudo apt-get upgrade -y

echo "***********************"
echo "* Adding Flatpak Repo *"
echo "***********************"
sudo add-apt-repository ppa:flatpak/stable

echo "*******************************"
echo "* Adding Neovim Unstable Repo *"
echo "*******************************"
sudo add-apt-repository ppa:neovim-ppa/unstable

echo "*******************************"
echo "* Adding Wezterm Stable Repo  *"
echo "*******************************"
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

echo "*******************************"
echo "* Adding Microsoft Edge Repo  *"
echo "*******************************"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
sudo rm microsoft.gpg

echo "*******************************"
echo "*       Adding eza Repo       *"
echo "*******************************"
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list

echo "*******************************"
echo "*       Adding Nodejs         *"
echo "*******************************"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&
  echo "*******************************"
echo "*       Adding Github CLI     *"
echo "*******************************"
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) &&
  sudo mkdir -p -m 755 /etc/apt/keyrings &&
  wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&
  sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null

echo "*******************************"
echo "*-------Update System---------*"
echo "*******************************"
sudo apt update -y

echo "Installing...."
echo "|--------------------------|-----------------------|------------------------|------------------------|--------------------------------|"
echo "| neovim                   | stow                  | nodejs                 | flatpak                | gnome-software-plugin-flatpak  |"
echo "| wezterm                  | vlc                   | gimp                   | zsh                    | tmux                           |"
echo "| microsoft-edge-stable    | eza                   | ripgrep                | gnome-tweaks           | npm                            |"
echo "|-------------------------------------------------------------------------------------------------------------------------------------|"

sudo apt-get install -y neovim stow nodejs
sudo apt install -y flatpak gnome-software-plugin-flatpak wezterm vlc gimp zsh tmux microsoft-edge-stable eza ripgrep gnome-tweaks npm gh
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "*******************************"
echo "*       Installing zoxide	    *"
echo "*******************************"
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

echo "*******************************"
echo "*       Installing fzf	    *"
echo "*******************************"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "*******************************"
echo "*       Installing poetry	    *"
echo "*******************************"
curl -sSL https://install.python-poetry.org | python3 -

echo "*******************************"
echo "*       Adding tpm 	    *"
echo "*******************************"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "*****************Changing default shell to zsh. Make sure to logout and login back to see changes..."
chsh -s $(which zsh)

echo "*******************************"
echo "*     Installing oh-my-zsh    *"
echo "*******************************"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
