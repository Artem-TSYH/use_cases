### VMs for Kubernetes Cluster ###

## 1. Change Hostname

sudo hostnamectl set-hostname controlplane
#node01, node02 ...

sudo vi /etc/hosts

## 2. Add user for Ansible (ansible_user_add.sh)

curl https://raw.githubusercontent.com/Artem-TSYH/use_cases/refs/heads/main/ansible_user_add.sh > ansible_user_add.sh

chmod +x ansible_user_add.sh

sudo ./ansible_user_add.sh

## 3. SSH-Server. Install (ssh_install.sh)

curl https://raw.githubusercontent.com/Artem-TSYH/use_cases/refs/heads/main/ssh_install.sh > ssh_install.sh

chmod +x ssh_install.sh

sudo ./ssh_install.sh

## EXTRA. Ansible. Time for Playbook-Execution
/usr/bin/time -f "\nElapsed time: %E" ansible-playbook -i inventory.ini modules_boot.yaml


#

#
