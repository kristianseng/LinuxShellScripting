**Setting one VM machine + common commands**

Install vagrant
Install OracleVM

vagrant box add jasonc/centos7
mkdirc shellclass 
cd shellclass
mkdir testbox01
cd testbox 01
vagrant init jasonc/centos7
vagrant up

code Vagrantfile //created in testbox01 dir

start OracleVirtualBox
vagrantstatus // shows status of virtual box

vagrant ssh // connect to linux system (password inserted automatically[vagrant])
exit // logs out from virtual machine and back to operating system
vagrant halt // stops virtual machine -> work is not losted but VM is powered off

{
code Vagrantfile
config.vm.box = "jasonc/centos7"
config.vm.hostname = "testbox01" // localhost is default
config.vm.network "private_network", ip: "10.9.8.7"
}


vagrant reload = vagrant halt + vagrant up // reload config
vagrant ssh
exit


ping - c 3 10.9.8.7 // test network connectivity - command differs for each operating system
if timeout -> system is down or there are problems in config

vagrant destroy - delete machine

