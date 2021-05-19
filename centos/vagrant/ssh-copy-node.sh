#!/bin/bash

runuser -l ansible -c 'ssh-keygen -b 2048 -t rsa -f /home/ansible/.ssh/id_rsa -q -N ""'
sudo yum -y install sshpass
runuser -l ansible -c 'sshpass -p "ansible123" ssh-copy-id -o StrictHostKeyChecking=no ansible@192.168.36.3'
runuser -l ansible -c 'sshpass -p "ansible123" ssh-copy-id -o StrictHostKeyChecking=no ansible@192.168.36.4'