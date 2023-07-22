#!/bin/bash

conf_file="/etc/redis/redis.conf"

sed -i 's/^bind 127.0.0.1 ::1/bind 0.0.0.0/g' "$conf_file"

sed -i 's/^# requirepass foobared/requirepass Dw8tHZg45EahGx!/g' "$conf_file"
