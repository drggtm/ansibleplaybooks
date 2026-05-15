node_exporter
=============

Installs Prometheus' `node_exporter` (host metrics: CPU, memory, disk, network, etc.) as a systemd service running under a dedicated unprivileged system user.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)
- Network access to GitHub releases

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `node_exporter_version` | `"1.8.2"` | Upstream release to pin |
| `node_exporter_user` | `node_exporter` | System user the process runs as |
| `node_exporter_listen_address` | `"0.0.0.0:9100"` | Bind address for the metrics HTTP endpoint |

Usage
-----
```
$ ansible-playbook node_exporter.yml
```

Or as part of the observability bundle:
```
$ ansible-playbook site.yml --tags observability
```

Verify
------
```
$ curl http://<target>:9100/metrics | head
```
