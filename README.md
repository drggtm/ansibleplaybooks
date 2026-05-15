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
- PostgreSQL — installs PostgreSQL, opens it for remote password auth, and creates a configurable list of databases and per-database users. Run with `ansible-playbook postgresql.yml` or `ansible-playbook site.yml --tags postgresql`. See `roles/postgresql/README.md`.
### How to use:
1. First edit ansible.cfg file with inventory and remote user as required.
2. Change the hosts file with the IP address of the host where you want to install these services. You can change the group name as well. In my case it is `my_vm`. Changing the group name means you also need to change the `.yml` file with the hostname you provide in the hosts file.
3. Install the required collections:
$ ansible-galaxy collection install -r requirements.yml
4. To install a specific service:
$ ansible-playbook mariaDB.yml ( this installs MariaDB). You can install others similarly by changing the .yml filename.
5. To provision all four services in one run:
$ ansible-playbook site.yml
   Or run a subset by tag, e.g.:
$ ansible-playbook site.yml --tags redis,mariadb

You can also go through the README.md of each role to learn more about each service.

## Linting
The repo is linted on every push and pull request via GitHub Actions (see `.github/workflows/lint.yml`). To run the same checks locally:
$ pip install ansible-lint yamllint
$ yamllint .
$ ansible-lint

Note: passwords in `roles/*/vars/main.yml` and shell scripts are committed in plaintext for demo purposes. For real deployments, move them behind `ansible-vault`.

