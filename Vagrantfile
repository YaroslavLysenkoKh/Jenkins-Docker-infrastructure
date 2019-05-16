hosts = [
  { name: 'jenkinsmaster',   box: 'centos/7',	        mem: 1024, 	netint: 1 },
  { name: 'swarmmaster',   box: 'ubuntu/trusty64',	mem: 4096,	netint: 2 },
  { name: 'swarmslave1',   box: 'ubuntu/trusty64',	mem: 4096,	netint: 3 }
]


Vagrant.configure('2') do |config|
  hosts.each do |host|
    config.vm.define host[:name] do |node|
      node.vm.box = host[:box]
      node.vm.hostname = host[:name]
      node.vm.provider :virtualbox do |vm|
        vm.memory = host[:mem]
      end

      if host[:netint] == 1
        node.vm.network :public_network, bridge: 'Intel(R) Ethernet Connection (2) I219-V'
        node.vm.provision 'shell', path: 'jenkins_install.sh'
      end

      if host[:netint] == 2
        node.vm.network :public_network, bridge: 'Intel(R) Ethernet Connection (2) I219-V'
        node.vm.provision 'shell', path: 'docker_install.sh'
      end

      if host[:netint] == 3
        node.vm.network :public_network, bridge: 'Intel(R) Ethernet Connection (2) I219-V'
        node.vm.provision 'shell', path: 'docker_install.sh'
      end

    end
    config.vm.synced_folder '.', '/vagrant', type: 'virtualbox'
    Vagrant::Config.run do |config|
      config.vbguest.auto_update = false
      config.vbguest.no_remote = true
    end
  end
end
