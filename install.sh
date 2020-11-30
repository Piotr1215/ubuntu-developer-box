#!/bin/bash
echo 'Bootstrap steps start here:'

echo '[STEP 1] Installing base packages'

echo '[STEP 2] Updating apt-get repositories...'
apt-get update

echo '[STEP 3] Installing base packages'

apt-get -y install git
apt-get -y install zsh
apt-get -y install figlet
apt-get -y install tmux
apt-get -y install wget
apt-get -y install htop

echo '[STEP 4] Installing Oh-My-Zsh'
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo '[STEP 5] Installing zsh-autosuggestions plugin'
git clone https://github.com/zsh-users/zsh-autosuggestions /home/vagrant/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo '[STEP 6] Install tmux with cool customizations'
git clone https://github.com/samoshkin/tmux-config.git /home/vagrant/tmux-config
/home/vagrant/tmux-config/install.sh

echo '[STEP 7] Clone my dotfiles'
git clone git://github.com/Piotr1215/dotfiles.git /home/vagrant/.dotfiles

echo '[STEP 8] Copy dotfiles over exisitng ones'
cp ~/.dotfiles/.zshrc /home/vagrant/.zshrc

echo '[STEP 9] Setting zsh as default shell'
chsh -s $(which zsh) vagrant