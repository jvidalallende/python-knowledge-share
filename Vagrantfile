# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Base box is Ubuntu 16.04 Xenial Xerus
  config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/xenial64"
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider :virtualbox do |vb|
    vb.name = "Python-KS-VM"
    vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  # Enable X forwarding through SSH
  config.ssh.forward_x11 = true

  # Provision VM. Use regular user, not root (passwordless sudo is available)
  config.vm.provision "shell", path: "bootstrap.bash", privileged: false

end
