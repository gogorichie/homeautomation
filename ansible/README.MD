ansible -i /etc/ansible/inventory/hosts rpis -m ping --user pi --ask-pass 

- Update vm's
ansible-playbook /etc/ansible/playbooks/apt.yml --user pi --ask-pass --ask-become-pass -i  /etc/ansible/inventory/hosts