# -*- mode: ruby -*-
# # vi: set ft=ruby :

require 'fileutils'

$num_instances = 1
$vb_gui = false
$vb_memory = 4096
$vb_cpus = 2

Vagrant.configure("2") do |config|

  config.vm.box = "coreos-alpha"
  config.vm.box_version = ">= 308.0.1"
  config.vm.box_url = "http://storage.core-os.net/coreos/amd64-usr/alpha/coreos_production_vagrant.json"

  (1..$num_instances).each do |i|
    config.vm.define vm_name = "core-%02d" % i do |config|
      config.vm.hostname = vm_name

      config.vm.provider :virtualbox do |vb|
        vb.gui = $vb_gui
        vb.memory = $vb_memory
        vb.cpus = $vb_cpus
      end

      httpport = "#{i+8080}"
      config.vm.network "forwarded_port", guest: 80, host: httpport

      ip = "172.17.8.#{i+100}"
      config.vm.network :private_network, ip: ip

      config.vm.provision :shell, :path => "coreos/bootstrap.sh", :privileged => true
    end
  end
end
