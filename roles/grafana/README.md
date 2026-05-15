grafana
=======

Installs Grafana OSS from the official `apt.grafana.com` repository and resets the admin password.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)
- Network access to `apt.grafana.com`

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `grafana_admin_password` | `"ChangeMe123"` | Password set on the built-in `admin` user via `grafana-cli admin reset-admin-password`. Override in production. |

For real deployments, move `grafana_admin_password` behind `ansible-vault`.

Usage
-----
```
$ ansible-playbook grafana.yml
```

Or as part of the observability bundle:
```
$ ansible-playbook site.yml --tags observability
```

Verify
------
Visit `http://<target>:3000` and sign in as `admin` with the password you configured. The default Prometheus data source is at `http://localhost:9090` if you installed the prometheus role on the same host.
