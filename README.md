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
| SpringCloud Alibaba | 2.2.1.RELEASE |
| Nacos | v2.0.4 |
| Sentinel Dashboard | 1.8.0 |
| Maven| 3 |
| Docker| v20.10.10 |

<br>
<br>

### Execute
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
| localhost:8848/nacos/ | Nacos DashBoard (signin nacos:nacos) |
| localhost:8858 | Sentinel DashBoard (signin sentinel:sentinel ) |

<br>
<br>

### Best Further
1. Nacos Cluster with Nginx
1. Gateway Cluster
1. Nginx Cluster with KeepAlive

![](./images/bestFuther.png)
