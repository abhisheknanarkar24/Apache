# Apache

It consist installation of httpd on rhel, oracle-0linux and apache2 on ubuntu.

- Install apache2 on ubuntu os:

   ansible-playbook Apache_ubuntu.yml -r "hosts=hostname" -i /etc/ansible/invenroty 
  
- Instal httpd on RHEL:

   ansible-playbook Apache_lin.yml -r "hosts=hostname" -i /etc/ansible/invenroty 
