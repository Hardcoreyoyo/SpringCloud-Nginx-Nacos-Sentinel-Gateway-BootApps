#!/bin/sh

import='spring:
  cloud:
    sentinel:
      filter:
        enable: false
      eager: true
      transport:
        port: 8719
        dashboard: sentinel:8858
    gateway:
      discovery:
        locator:
          enabled: true
      routes:
        - id: HardcoreyoyoGateWay-Service-SMS
          uri: lb://Service-SMS
          predicates:
            - Path=/sms/**
        - id: HardcoreyoyoGateWay-Service-RBAC
          uri: lb://Service-RBAC
          predicates:
            - Path=/rbac/**   
'

while :
do
    code="$(curl -I -m 10 -o /dev/null -s -w %{http_code}  http://localhost:8848/nacos/)"
    if [[ $code -eq 200 ]]; then
        while :
        do
            check=$(curl -s -X POST 'http://localhost:8848/nacos/v1/cs/configs' -d 'dataId=SpringCloud-Gateway-dev.yaml&group=HARDCOREYOYO_GROUP&type=yaml&content='"${import}")
            if [[ $check -eq true ]]; then
                echo Gateway Config upload success
                break
            else
                sleep 2
            fi                    
        done
        break
    else
        echo connect Nacos ...
        sleep 4
    fi
done




