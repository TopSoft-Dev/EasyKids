@echo off
title EasyKid - Frontend
echo ========================================
echo   EasyKid - Kontrola Rodzicielska
echo   Frontend (tryb produkcyjny)
echo ========================================
echo.

cd /d "%~dp0"

if not exist "node_modules" (
    echo Instalowanie zaleznosci...
    call npm install
    echo.
)

if not exist "dist" (
    echo Budowanie aplikacji...
    call npm run build
    echo.
)

echo Uruchamianie serwera na http://localhost:3000/
echo.
npx serve dist -l 3000 -s

pause
