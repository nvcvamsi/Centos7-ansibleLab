#!/bin/bash
for i in ansible apmuser splunkuser
do 
	useradd $i 
	passwd -d $i 
	echo $i"123" | passwd  $i --stdin 
done
sudo sed -i -e '/^root/a ansible\tALL=(ALL)\tNOPASSWD: ALL' /etc/sudoers
sudo sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd