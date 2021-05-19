# A simple Ansible lab setup having 1 master and 2 worker Nodes.

Below will be the IP Address and node name.
192.168.36.2   ansibleserver
192.168.36.3   ansiblenode01
192.168.36.4   ansiblenode02
  
Mater Node:
1) createuser : ansible and set password as "ansible123"
2) updating the /etc/hosts/ file.
3) sudoer's file updating for ansible user.
4) Generating SSH keys and copying to worker nodes for SSH key exchange.
5) Performing yum update and installing python and ansible with dependencies.
  
Worker Node:
1) Creating user ansible with password "ansible123"
2) sudoer's file updating for ansible user.



**Pre-requisite:**

Below link download the  virtualBox binaries and install w.r.t hosting machine.

https://www.virtualbox.org/wiki/Downloads


Donwload the Vagrant binary from below link and install w.r.t host machine compatible OS platform.

https://www.vagrantup.com/downloads


**Privisioning Nodes**

1) Clone the Git reporistory into  local machine.

     git clone  https://github.com/nvcvamsi/ansibleLabSetup.git

2) Launch Oracl VM Virtual Box Manager application.

3) Now CMD(coomand line toll) switch to local repo and initialise provisioning boxes.

    cd <git copied local path>\ansibleLabSetup > vagrant up
  
it will take  10-15 minutes to provision all the boxes and initialization to complete.
  
Finally we will be able to see all three nodes in running status in oracle Virtualbox VM Manager. 
