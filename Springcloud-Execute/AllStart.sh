#!/bin/sh

cd ../

path=`pwd`

mvn -f ./SpringCloud-Source/ServiceRBAC package 

mv -f ./SpringCloud-Source/ServiceRBAC/target/SpringCloudEurekaServiceRBAC-ServiceRBAC1.0.0.jar $path/Springcloud-Execute/RBAC/

mvn -f ./SpringCloud-Source/SpringCloudGateway package 

mv -f ./SpringCloud-Source/SpringCloudGateway/target/SpringCloudGateway-SCG1.0.0.jar $path/Springcloud-Execute/gateway/

mvn -f ./SpringCloud-Source/ServiceSMS package 

mv -f ./SpringCloud-Source/ServiceSMS/target/ServiceSMS-SSMS1.0.0.jar $path/Springcloud-Execute/SMS/sms_master/

cp -f ./Springcloud-Execute/SMS/sms_master/ServiceSMS-SSMS1.0.0.jar $path/Springcloud-Execute/SMS/sms_backup/

cd $path/Springcloud-Execute

docker-compose up -d

./commandGroup/Nacos-Import-Gateway.sh

./commandGroup/Nacos-Import-RBAC.sh

./commandGroup/Nacos-Import-SMS.sh