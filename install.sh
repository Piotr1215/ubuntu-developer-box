#!/bin/bash

echo '[START] Starting Provisioning Process'

echo '[INSTALLATION] Installing base packages'

apt-get update && apt-get -y install --no-install-recommends \
    git \
    zsh \
    curl \
    figlet \
    tmux \
    wget \
    htop

echo '[CLONING] Installing Oh-My-Zsh'
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo '[CLONING] Installing zsh-autosuggestions plugin'
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo '[INSTALLATION] Install tmux with cool customizations'
git clone https://github.com/samoshkin/tmux-config.git ~/tmux-config
~/tmux-config/install.sh

echo '[CLONING] Clone my dotfiles'
git clone git://github.com/Piotr1215/dotfiles.git ~/.dotfiles

echo '[INSTALLATION] Installing kubectl'
(
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && apt-get -y install --no-install-recommends kubectl
)

echo '[INSTALLATION] Installing kubectx and kubens - quickly switch kubernetes context and namespace'
(
  git clone https://github.com/ahmetb/kubectx /opt/kubectx && \
  ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx && \
  ln -s /opt/kubectx/kubens /usr/local/bin/kubens
)

echo '[COPYING] Copy dotfiles over exisitng ones'
cp ~/.dotfiles/.zshrc ~/.zshrc

echo '[SETUP] Setting zsh as default shell'
chsh -s $(which zsh)

echo '[END] Provisioning Process Finished'