# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.hostname = "standalone"
  config.vm.network "private_network", ip: "192.168.33.20"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.synced_folder "/Users", "/Users"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
     vb.name = "standalone"
  end
  config.vm.provision :shell, path: "provision/bootstrap.sh"
  config.vm.provision :shell, inline: 'PYTHONUNBUFFERED=1 ansible-playbook -s /vagrant/provision/ansible/prov.yml -c local'
end
