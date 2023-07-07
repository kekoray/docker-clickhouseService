# docker-clickhouseService



### 版本说明

| 版本                               | 节点数 | CPU架构 |
| :--------------------------------- | :----- | ------- |
| koray2021/clickhouse:22.3.4-arm64  | 1      | arm64   |
| koray2021/clickhouse:22.8.19-amd64 | 1      | amd64   |






### 1.目录结构

```shell
docker-clickhouseService/
├── docker-compose.yml 
├── conf
│   ├── config.xml    # 配置文件
│   └── users.xml     # 用户配置文件
├── data              # 数据目录
├── initdb            # 初始化数据库脚本
└── logs              # 日志目录
```



### 2.Compose传参说明


| 参数项            | 说明                                                | 传参方式                         |
| ----------------- | --------------------------------------------------- | -------------------------------- |
| \${user}    | 登录用户名 | \.env文件形式传参 |
| \${passwd}   | 登录密码                        | \.env文件形式传参        |



### 3.报错说明

- 遇到文件创建的权限问题，则要对整个目录进行权限降级；

```shell
sudo chmod 777 docker-clickhouseService/ -R
```

