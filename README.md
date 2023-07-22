## Overview
This repo contains the ansible playbook to install and configure some services( MariaDb, Redis, Elasticsearch and rabbitmq).

## Requirements
List the prerequisites:
- Ansible 
- Ubuntu VERSION="22.04.2 LTS (Jammy Jellyfish)
- VS code

## Getting Started

### How to install Ansible 
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt update
$ sudo apt install ansible

### To clone this repo
$ git clone .....

### Usage
This repo is used to install and configured some linux services.

### Playbooks
- MariaDB
- Rabbitmq
- Redis
- Elasticsearch
### How to use:
1. First edit ansible.cfg file with inventory and remote user as required.
2. change the hosts file with  the ip add of the os where you want to install these services. You can change groupname aslo. In my case there is my_vm. Changing groupname means you also need to change the .yml file with the hostname you provide in that hosts file.
3.To install a specific service.
$ ansible-playbook maria.yml ( this installs mariaDB). YOu can install others similarly by changing .yml filename.

