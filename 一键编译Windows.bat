@echo off
chcp 65001 >nul

echo ========== 开始编译 Grok3 API ==========
echo 正在编译测试版...
go build -o app-test.exe app-test.go

echo 正在编译稳定版...
go build -o 稳定版\app.exe 稳定版\app.go

echo ========== 编译完成 ==========
echo 测试版已编译为: app-test.exe
echo 稳定版已编译为: 稳定版\app.exe
echo.
pause