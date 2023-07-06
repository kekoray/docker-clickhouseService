# docker-clickhouseService


### 1.目录结构

```shell
docker-clickhouseService/
├── docker-compose.yml 
├── conf
│   ├── config.xml    # 配置文件
│   └── users.xml     # 用户配置文件
├── data              # 数据目录
├── initdb            # 数据库初始化文件
└── logs              # 日志目录
```



### 2.compose文件

```yaml
version: '3.1'
services:
  clickhouse:
    image: clickhouse/clickhouse-server:latest
    container_name: clickhouse
    hostname: clickhouse
    restart: always
    ports:
      - 8123:8123
      - 9000:9000
      - 9009:9009
    volumes:
      - /etc/localtime:/etc/localtime
      - ./data:/var/lib/clickhouse 
      - ./initdb:/docker-entrypoint-initdb.d
      - ./conf/users.xml:/etc/clickhouse-server/users.xml
      - ./conf/config.xml:/etc/clickhouse-server/config.xml
      - ./logs:/var/log/clickhouse-server
```



### 3.构建修改项

| 修改点           | 文件      | 修改项   |
| ---------------- | --------- | -------- |
| 1.数据库用户配置 | users.xml | \<users> |





