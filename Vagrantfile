# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Pick a box to use:
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder "/home/decoder/dev", "/home/vagrant/dev"
  ############################################################
  # Oh My ZSH Install section

  # Install git and zsh prerequisites
  config.vm.provision :shell, path: "install.sh"

  ############################################################

end
