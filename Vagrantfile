# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "scripts/docker.sh"
  config.vm.provision "shell", path: "scripts/bazel.sh"
  config.vm.provision "shell", path: "scripts/gvisor.sh"
end
