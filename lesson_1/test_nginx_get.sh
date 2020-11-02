#!/bin/bash
# Проверка установки hostname, пример GET 

set -e
IP=${1:-127.0.0.1}
PORT=${2:-80}
HOSTNAME=$3
exec 3<>/dev/tcp/$IP/$PORT
#echo -e "GET / HTTP/1.1\r\nConnection: close\r\n\r\n" >&3
echo -e "GET / HTTP/1.1\r\nhost: $HOSTNAME\r\nConnection: close\r
cat <&3