#!/bin/bash

# 获取本机架构信息
arch=$(uname -m)

# 根据架构执行相应的脚本
if [[ $arch == "x86_64" ]]; then
    echo "-----------  clickhouse is stopping : [ $arch ]------------"
    docker-compose -f ./docker-compose_amd64.yml down
elif [[ $arch == "aarch64" ]]; then
    echo "-----------  clickhouse is stopping : [ $arch ]------------"
    docker-compose -f ./docker-compose_arm64.yml down
else
    echo "Unsupported architecture: $arch"
fi
