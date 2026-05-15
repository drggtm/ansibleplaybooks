prometheus
==========

Installs Prometheus from the upstream release tarball, drops a templated `prometheus.yml`, registers a systemd unit, and starts the service under a dedicated unprivileged user.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)
- Network access to GitHub releases

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `prometheus_version` | `"2.55.1"` | Upstream release to pin |
| `prometheus_user` | `prometheus` | System user the daemon runs as |
| `prometheus_config_dir` | `/etc/prometheus` | Where consoles and `prometheus.yml` live |
| `prometheus_data_dir` | `/var/lib/prometheus` | TSDB storage path |
| `prometheus_listen_address` | `"0.0.0.0:9090"` | Bind address for the web UI / API |
| `prometheus_scrape_targets` | self + localhost node_exporter | List of `{job_name, targets: [...]}` baked into `prometheus.yml` |

Usage
-----
```
$ ansible-playbook prometheus.yml
```

Or as part of the observability bundle:
```
$ ansible-playbook site.yml --tags observability
```

Verify
------
```
$ curl http://<target>:9090/-/ready
```
