#!/bin/sh

docker-compose up -d

./commandGroup/Nacos-Import-Gateway.sh

./commandGroup/Nacos-Import-RBAC.sh

./commandGroup/Nacos-Import-SMS.sh