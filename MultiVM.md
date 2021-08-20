mkdir multitest // in shellclass dir  
cd multitest  
vagrant init jasonc.centos7  

code vagrantfile  

config.vm.box = "jasonc/centos7"  

config.vm.define "test1" do |test1|   
  test1.vm.hostname = "test1"    
  test1.vm.netork "private_network", ip "10.9.8.5"    
end  

config.vm.define "test1" do |test2|  
  test2.vm.hostname = "test2"  
  test2.vm.netork "private_network", ip "10.9.8.6"   
end  


vagrant up // brings both up
vagrant up test1 // bring one up


vagrant ssh test1 // here we need to specify

ping -c 3 10.9.8.5 // -c for mac terminal


// access localmachine files

ls /vagrant --> shows vagrant file 
cat /vagrant/Vagrantfile
