# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "vinik/ubuntu"

  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ['chef/cookbooks']
    chef.json = {
    }
    chef.add_recipe 'jenkins::master'
    chef.add_recipe 'myjenkins'
  end

end
