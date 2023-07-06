
### Executing

This will update all the machines in the host file
```sh
ansible-playbook /etc/ansible/playbooks/updates-all.yml --user pi --ask-pass --ask-become-pass -i  /etc/ansible/inventory/hosts

run this to edit the updates-all.yml
```sh
sudo nano /etc/ansible/playbooks/updates-all.yml
