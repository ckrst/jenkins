# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    #config.vm.define "jenkins"
    config.vm.box = "vinik/ubuntu"

    config.vm.network "forwarded_port", guest: 8080, host: 8080

    config.berkshelf.enabled = true
    config.berkshelf.berksfile_path = "chef/Berksfile"

    config.vm.provision "chef_solo" do |chef|

        chef.cookbooks_path = ['chef/cookbooks']

        chef.json = {
            "java" => {
                "install_flavor" => "oracle",
                "jdk_version" => "7",
                "oracle" => {
                    "accept_oracle_download_terms" => true
                }
            },
            "jenkins": {
                "master": {
                    "jvm_options": "-Djenkins.install.runSetupWizard=false"
                }
            }
        }

        chef.add_recipe 'java'
        chef.add_recipe 'jenkins::master'
        chef.add_recipe 'myjenkins::default'
        #chef.add_recipe 'myjenkins::hello_world'

    end

end
