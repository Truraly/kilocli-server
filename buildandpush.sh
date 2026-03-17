#/bin/bash

# 构建基础版本
docker build -t 10.7.1.22:5000/kilocli-server:latest -f ./Dockerfile .
docker push 10.7.1.22:5000/kilocli-server:latest