#!/bin/bash

echo "========== 开始编译 Grok3 API =========="
echo "正在编译macOS测试版..."
export GOOS=darwin
export GOARCH=amd64
go build -o grok3_api_darwin_amd64 app-test.go

echo "正在编译macOS ARM64测试版(适用于M系列芯片)..."
export GOOS=darwin
export GOARCH=arm64
go build -o grok3_api_darwin_arm64 app-test.go

echo "正在编译macOS稳定版..."
export GOOS=darwin
export GOARCH=amd64
go build -o 稳定版/grok3_api_stable_darwin_amd64 稳定版/app.go

echo "========== 编译完成 =========="
echo "macOS AMD64测试版已编译为: grok3_api_darwin_amd64"
echo "macOS ARM64测试版已编译为: grok3_api_darwin_arm64"
echo "macOS稳定版已编译为: 稳定版/grok3_api_stable_darwin_amd64"
echo