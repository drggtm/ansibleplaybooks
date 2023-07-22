#!/bin/bash
sudo apt-get install -y apt-transport-https curl
sudo mkdir -p /etc/apt/keyrings
sudo curl -o /etc/apt/keyrings/mariadb-keyring.pgp 'https://mariadb.org/mariadb_release_signing_key.pgp'

echo "deb [signed-by=/etc/apt/keyrings/mariadb-keyring.pgp] https://mirrors.aliyun.com/mariadb/repo/10.11/ubuntu jammy main" | tee -a /etc/apt/sources.list

sudo apt update
sudo apt install -y mariadb-server