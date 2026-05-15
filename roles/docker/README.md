docker
======

Installs Docker CE from the official Docker apt repository (docker-ce, docker-ce-cli, containerd.io, the buildx and compose plugins), enables and starts the service, and optionally adds Linux users to the `docker` group so they can run docker without sudo.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)
- Network access to `download.docker.com`

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `docker_users` | `[]` | List of usernames to add to the `docker` group. Empty skips group management. |

Usage
-----
```
$ ansible-playbook docker.yml
```

Or as part of the full stack with the `docker` tag:
```
$ ansible-playbook site.yml --tags docker
```

Verify
------
```
$ docker run --rm hello-world
```
