# SpringCloud-Nginx-Nacos-Sentinel-Gateway-BootApps

<br>
<br>

### Structure

![](./images/Structure.png)

<br>
<br>

### Feature

| 組件 | Version |
| :----: | :----: |
| SpringCloud | Hoxton.SR3 |
| SpringBoot | 2.2.5.RELEASE |
| SpringCloud Gateway | 2.2.2.RELEASE |
| SpringCloud Alibab | 2.2.1.RELEASE |
| Nacos | v2.0.4 |
| Sentinel Dashboard | 1.8.0 |
| Nginx| 1.21.6 |

<br>
<br>

### Execute
```
Package Project each Module and put each Folder
```
```
cd Springcloud-Execute
```
```
AllStart.sh
```

<br>
<br>

### Api

| api | Service |
| :----: | :----: |
| localhost:80 | Gateway (Not Found) |
| localhost:80/rbac | Service-RBAC |
| localhost:80/sms | Service-SMS |
| localhost:80/rbac/sms | RBAC -> SMS1 / SMS2 |
| localhost: each service port | not allow |

<br>
<br>

### Best Further
1. Nacos Cluster with Nginx
1. Gateway Cluster
1. Nginx Cluster with KeepAlive
![](./images/bestFuther.png)
