#!/bin/bash
JAR_FILE="../build/libs/*.jar"
DEPLOY_DIR="/app"

# 停止旧的服务
docker-compose down

# 复制新的 jar 文件
mkdir -p $DEPLOY_DIR
cp $JAR_FILE $DEPLOY_DIR/ktor-app.jar

# 启动新的服务
docker-compose up -d