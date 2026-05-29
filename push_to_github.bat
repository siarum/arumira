@echo off
chcp 65001 >nul
cd /d C:\Users\kotan\Desktop\地方競馬AI\keiba-web
copy /y "C:\Users\kotan\Desktop\地方競馬AI\today_races.json" "today_races.json" >nul 2>&1
copy /y "C:\Users\kotan\Desktop\地方競馬AI\metrics_v2.json" "metrics_v2.json" >nul 2>&1
git add today_races.json metrics_v2.json
git diff --cached --quiet
if errorlevel 1 (
    git commit -m "update %date% %time%"
    git push origin main
)