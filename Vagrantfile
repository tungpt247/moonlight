# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = 'ubuntu/trusty64'
  config.vm.network 'forwarded_port', guest: 80, host: 8080
  config.vm.network 'private_network', ip: '192.168.10.10'
  config.vm.hostname = 'webhost.vps'
end
