#!/bin/bash

echo "========== 开始编译 Grok3 API ==========="
echo "正在编译Linux AMD64测试版..."
export GOOS=linux
export GOARCH=amd64
go build -o grok3_api app-test.go

echo "正在编译Linux AMD64稳定版..."
export GOOS=linux
export GOARCH=amd64
go build -o 稳定版/grok3_api_stable 稳定版/app.go

echo "正在编译Linux ARM64测试版..."
export GOOS=linux
export GOARCH=arm64
go build -o grok3_api_arm64 app-test.go

echo "正在编译Linux ARM64稳定版..."
export GOOS=linux
export GOARCH=arm64
go build -o 稳定版/grok3_api_stable_arm64 稳定版/app.go

echo "========== 编译完成 ==========="
echo "Linux AMD64测试版已编译为: grok3_api"
echo "Linux AMD64稳定版已编译为: 稳定版/grok3_api_stable"
echo "Linux ARM64测试版已编译为: grok3_api_arm64"
echo "Linux ARM64稳定版已编译为: 稳定版/grok3_api_stable_arm64"
echo