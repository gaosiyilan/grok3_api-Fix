@echo off
chcp 65001 >nul

echo ========== 开始编译 Grok3 API ==========
echo 正在编译Windows测试版...
go build -o app-test.exe app-test.go

echo 正在编译Windows稳定版...
go build -o 稳定版\app.exe 稳定版\app.go

echo 正在交叉编译Linux AMD64测试版...
set GOOS=linux
set GOARCH=amd64
go build -o grok3_api app-test.go
set GOOS=windows
set GOARCH=amd64

echo ========== 编译完成 ==========
echo Windows测试版已编译为: app-test.exe
echo Windows稳定版已编译为: 稳定版\app.exe
echo Linux AMD64测试版已编译为: grok3_api
echo.
pause