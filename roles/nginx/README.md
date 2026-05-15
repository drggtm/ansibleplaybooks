nginx
=====

Installs and configures nginx on Ubuntu, then deploys a templated landing page.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `nginx_index_title` | `"nginx on {{ inventory_hostname }}"` | `<title>` and `<h1>` on the landing page |
| `nginx_index_message` | `"This server is managed by Ansible."` | Body text on the landing page |

Usage
-----
```
$ ansible-playbook nginx.yml
```

Or as part of the full stack with the `nginx` tag:
```
$ ansible-playbook site.yml --tags nginx
```
