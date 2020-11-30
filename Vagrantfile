# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Pick a box to use:
  config.vm.box = "ubuntu/trusty64"

  ############################################################
  # Oh My ZSH Install section

  # Install git and zsh prerequisites
  config.vm.provision :shell, inline: "apt-get -y install git"
  config.vm.provision :shell, inline: "apt-get -y install zsh"
  # config.vm.provision :shell, inline: "apt-get -y install figlet"
  # config.vm.provision :shell, inline: "apt-get -y install tmux"
  # config.vm.provision :shell, inline: "apt-get -y install pydf"
  # config.vm.provision :shell, inline: "apt-get -y install mc"
  # config.vm.provision :shell, inline: "apt-get -y install wget"
  # config.vm.provision :shell, inline: "apt-get -y install htop"
  # config.vm.provision :shell, inline: "touch ~/.tmux.conf"
  # config.vm.provision :shell, inline: "touch ~/.vim"
  # config.vm.provision :shell, inline: "touch ~/.vimrc"
  # config.vm.provision :shell, inline: "touch ~/.zshrc"
  # config.vm.provision :shell, inline: "touch ~/.oh-my-zsh"
  # config.vm.provision :shell, inline: "touch ~/.bashrc"

  # Clone Oh My Zsh from the git repo
  config.vm.provision :shell, privileged: false,
    inline: "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh"

  # Copy in the default .zshrc config file
  config.vm.provision :shell, privileged: false,
    inline: "cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc"

  # Change the vagrant user's shell to use zsh
  config.vm.provision :shell, inline: "chsh -s $(which zsh)"

  # Install my dotfiles
  config.vm.provision :shell,
    inline: "git clone git://github.com/Piotr1215/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./install"

  ############################################################

end