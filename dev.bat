@echo off
title EasyKid - Frontend DEV
echo ========================================
echo   EasyKid - Tryb deweloperski
echo ========================================
echo.

cd /d "%~dp0"

if not exist "node_modules" (
    echo Instalowanie zaleznosci...
    call npm install
    echo.
)

echo Uruchamianie serwera deweloperskiego...
echo.
npm run dev

pause
