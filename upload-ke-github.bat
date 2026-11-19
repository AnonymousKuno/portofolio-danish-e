@echo off
title Upload Portofolio ke GitHub
color 0b
echo ===================================================
echo   Mengunggah Portofolio Danish ke GitHub Otomatis
echo ===================================================
echo.

cd /d "%~dp0"

echo [1/4] Mengatur remote repositori...
git remote set-url origin https://github.com/AnonymousKuno/portofolio-danish-e.git 2>nul
if %errorlevel% neq 0 (
    git remote add origin https://github.com/AnonymousKuno/portofolio-danish-e.git
)

echo [2/4] Menyiapkan seluruh berkas...
git branch -M main
git add .

echo [3/4] Menyimpan commit pembaruan...
git commit -m "Sempurnakan portofolio dengan foto profil lingkaran dan struktur bersih" 2>nul

echo [4/4] Mengunggah (Push) ke GitHub...
git push -u origin main

echo.
echo ===================================================
echo   SELESAI! Seluruh file berhasil diunggah ke GitHub!
echo ===================================================
echo.
pause
