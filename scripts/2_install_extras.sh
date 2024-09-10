#!/bin/sh
echo "Installing miktex..."
curl -fsSL https://miktex.org/download/key | sudo tee /usr/share/keyrings/miktex-keyring.asc >/dev/null
echo "deb [signed-by=/usr/share/keyrings/miktex-keyring.asc] https://miktex.org/download/ubuntu jammy universe" | sudo tee /etc/apt/sources.list.d/miktex.list

sudo apt-get update -y
sudo apt-get install miktex -y
echo "installing zathura"
sudo apt install zathura -y
echo "You can install texmaker from pop shop."
sudo apt install sqlite3
