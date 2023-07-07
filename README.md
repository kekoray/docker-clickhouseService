# docker-clickhouseService

### 版本说明

| 版本                               | CPU架构 |
| :--------------------------------- | ------- |
| koray2021/clickhouse:22.3.4-arm64  | arm64   |
| koray2021/clickhouse:22.8.19-amd64 | amd64   |




### 目录结构

```shell
docker-clickhouseService/
├── conf
│   ├── config.xml             # 配置文件
│   └── users.xml              # 用户配置文件
├── data                       # 数据目录
├── initdb                     # 初始化数据库脚本
├── logs                       # 日志目录
├── start.sh                   # 启动脚本
├── stop.sh                    # 关闭脚本
├── .env                       # 传参文件
├── docker-compose_amd64.yml    
├── docker-compose_arm64.yml     
└── README.md
```



### Compose传参说明


| 参数项            | 说明                                                | 传参方式                         |
| ----------------- | --------------------------------------------------- | -------------------------------- |
| \${user}    | 登录用户名 | \.env文件形式传参 |
| \${passwd}   | 登录密码                        | \.env文件形式传参        |



### 启动说明

| 脚本     | 说明                                  |
| -------- | ------------------------------------- |
| start.sh | 根据服务器的CPU架构版本，启动对应服务 |
| stop.sh  | 根据服务器的CPU架构版本，关闭对应服务 |



### 报错说明

- 初次启动服务遇到文件创建的权限问题，则要对整个目录进行权限降级，再重启服务即可；

```shell
sudo chmod 777 docker-clickhouseService/ -R
```

