# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Pick a box to use:
  config.vm.box = "ubuntu/trusty64"

  ############################################################
  # Oh My ZSH Install section

  # Install git and zsh prerequisites
  config.vm.provision :shell, path: "https://gist.github.com/Piotr1215/fe37f0437b5661ec3b68e1685b6ed47a#file-vagrant-provision-sh"


  ############################################################

end