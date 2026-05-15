#!/bin/bash
set -e

apt-get update
apt-get install -y apt-transport-https software-properties-common ca-certificates curl gnupg

install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://apt.grafana.com/gpg.key | gpg --dearmor -o /etc/apt/keyrings/grafana.gpg
chmod a+r /etc/apt/keyrings/grafana.gpg

echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" \
  > /etc/apt/sources.list.d/grafana.list

apt-get update
apt-get install -y grafana
