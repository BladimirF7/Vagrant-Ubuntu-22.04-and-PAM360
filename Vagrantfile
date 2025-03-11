Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"
  config.vm.box_version = "202502.21.0"
  config.vm.network "forwarded_port", guest: 8282, host: 8282 # Web client port (inbound)
  config.vm.network "forwarded_port", guest: 8283, host: 8283 # Auto Logon Spark View Gateway port (inbound)
  config.vm.network "forwarded_port", guest: 6622, host: 6622 # SSH API (inbound)
  config.vm.network "forwarded_port", guest: 8080, host: 8080 # Private CA-OCSP Responder Server port (inbound)
  config.vm.provision "shell", path: "create_pam360_user.sh"
  config.vm.provision "shell", path: "install_pam360.sh"
  end