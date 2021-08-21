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



-----

general notes  

cd shellclass  
mkdir localusers  
cd localusers  
vagrant init jasonc/centos7  
vagrant ssh // inside virtual machine  
cd /vagrant  
ls -l  
pwds  
// its possible to edit scripts on localmachine or vm, folder is the same  
luser-demo01.sh // file names with shell scripts dont matter (.sh - is not signifant)  
cat luser-demo01.sh  

#!/bin/bash # - Sharp !Band #! = Shebang  
/bin/bash --> interpretor  

# - comment / not executed
----
OWNER - GROUP - ANYONE ELSE -- CHOMD TO CHANGE 755 - DEFAULT  

./luser-demo01.sh executes file  
/vagrant/luser-demo01.sh second way  

mv luser-demo01.sh jason -> rename file  
touch -> creates empty file  
type echo -> show if its shell build it   
type -a echo  
to way to run echo ->  
echo "hello"  
/usr/bin/echo 'Hello'  
help echo // help, all commands  
help echo |less  
uptime -> not shell buildin  
type -a uptime  
help uptime // dont get anything  
man uptime // get manual  


