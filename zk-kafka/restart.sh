#! /bin/bash

ip_address=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
echo "本机IP地址：$ip_address"

export IP_ADDRESS=$ip_address

docker-compose restart
