postgresql
==========

Installs PostgreSQL, opens it for remote password auth, and creates a configurable list of databases and users.

Requirements
------------
- Ansible 2.10+
- Ubuntu 22.04 (jammy)
- The `community.postgresql` collection (declared in the repo-level `requirements.yml`)

Role Variables
--------------
| Variable | Default | Purpose |
|---|---|---|
| `postgres_version` | `"14"` | Used to compute config paths for the apt-installed PostgreSQL |
| `postgres_conf_path` | derived | Path to `postgresql.conf` |
| `postgres_hba_path` | derived | Path to `pg_hba.conf` |
| `postgres_admin_password` | `"ChangeMe123"` | Password set on the `postgres` superuser |
| `postgres_databases` | demo list | `[{ name: ... }]` databases to create |
| `postgres_users` | demo list | `[{ name, password, db_name }]` per-database users |

For real deployments, move `postgres_admin_password` and `postgres_users[*].password` behind `ansible-vault`.

Usage
-----
```
$ ansible-playbook postgresql.yml
```

Or as part of the full stack with the `postgresql` tag:
```
$ ansible-playbook site.yml --tags postgresql
```
