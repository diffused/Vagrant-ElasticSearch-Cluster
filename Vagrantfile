# -*- mode: ruby -*-
# vi: set ft=ruby :

# Recommend that you run vagrant in cygwin
# git bash has performance issues with vagrant ssh

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # using 32bit. 64bit requires you to enable 64 virtualization in your bios
  config.vm.box = "precise32"
  # config.ssh.private_key_path = "~/.ssh/id_rsa"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 9200, host: 9200
  
  #or, create a private network. The host is automatically assigned 192.168.50.1
  
  config.vm.define "es1" do |es1|
    es1.vm.network "private_network", ip: "192.168.50.20"
    es1.vm.network :forwarded_port, guest: 9200, host: 9200
    config.vm.provision :shell, :path => "bootstrap.sh", :args => "/vagrant/install_elasticsearch_es1.sh"
  end

  config.vm.define "es2" do |es2|
    es2.vm.network "private_network", ip: "192.168.50.21"
    es2.vm.network :forwarded_port, guest: 9200, host: 9201
    config.vm.provision :shell, :path => "bootstrap.sh", :args => "/vagrant/install_elasticsearch_es2.sh"    
  end

  config.vm.define "es3" do |es3|
    es3.vm.network "private_network", ip: "192.168.50.22"
    es3.vm.network :forwarded_port, guest: 9200, host: 9202    
    config.vm.provision :shell, :path => "bootstrap.sh", :args => "/vagrant/install_elasticsearch_es3.sh"
  end

  

  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    # vb.gui = true
  
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
