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

feign:
  okhttp:
    enabled: true
'

while :
do
    code="$(curl -I -m 10 -o /dev/null -s -w %{http_code}  http://localhost:8848/nacos/)"
    if [[ $code -eq 200 ]]; then
        while :
        do
            check=$(curl -s -X POST 'http://localhost:8848/nacos/v1/cs/configs' -d 'dataId=Service-RBAC-dev.yaml&group=HARDCOREYOYO_GROUP&type=yaml&content='"${import}")
            if [[ $check -eq true ]]; then
                echo RBAC Config 上傳成功
                break
            else
                echo RBAC Config 沒有上傳成功
                sleep 2
            fi                    
        done
        break
    else
        echo 嘗試連線 Nacos 中...
        sleep 4
    fi
done




