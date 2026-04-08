@echo off
chcp 65001 > nul
echo ====================================
echo  sci_phi_news_app - ローカルサーバー起動
echo ====================================
echo.

cd /d "%~dp0"

python --version > nul 2>&1
if %errorlevel% == 0 (
    echo [OK] Python が見つかりました。http://localhost:8080 で起動します...
    start "" "http://localhost:8080/index.html"
    python -m http.server 8080
) else (
    echo [ERROR] Python が見つかりませんでした。
    echo.
    echo 以下のいずれかをインストールしてください:
    echo   - Python: https://www.python.org/downloads/
    echo   - または VS Code の Live Server 拡張機能を使用してください
    echo.
    pause
)
