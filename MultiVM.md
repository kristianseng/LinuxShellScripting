mkdir multitest // in shellclass dir
cd multitest
vagrant init jasonc.centos7

code vagrantfile

config.vm.box = "jasonc/centos7"

config.vm.define "test1" do |test1|
  test1.vm.hostname = "test1"
  test1.vm.netork "private_network", ip "10.9.8
end

config.vm.define "test1" do |test2|
  test2.vm.hostname = "test1"
  test2.vm.netork "private_network", ip "
end
