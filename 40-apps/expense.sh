#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/suprajaspace/09.project_ansible.git
cd 09.project_ansible
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml

