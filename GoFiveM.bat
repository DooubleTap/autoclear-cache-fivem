@echo off
setlocal enabledelayedexpansion
color 0A
mode con: cols=80 lines=25
title RPQC - Nettoyeur de Cache FiveM

cls
echo.
echo  ===================================================
echo         Nettoyeur de Cache FiveM Automatique
echo  ===================================================
echo.
echo  [*] Demarrage du nettoyage...
timeout /t 2 /nobreak >nul

cls
echo.
echo  ===================================================
echo         Nettoyage en cours
echo  ===================================================
echo.
echo  [~] Suppression des fichiers cache...
echo.

rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\cache" 2>nul
echo  [OK] Cache principal supprime
timeout /t 1 /nobreak >nul

rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\server-cache" 2>nul
echo  [OK] Cache serveur supprime
timeout /t 1 /nobreak >nul

rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\server-cache-priv" 2>nul
echo  [OK] Cache prive supprime
timeout /t 1 /nobreak >nul

echo.
echo  [TERMINE] Cache nettoye avec succes!
echo.
timeout /t 2 /nobreak >nul

cls
echo.
echo  ===================================================
echo         Preparation du lancement
echo  ===================================================
echo.
echo  [INFO] Attente de 10 secondes avant de lancer FiveM...
echo         (Pour que tout se charge correctement)
echo.
echo  Progression:
echo.

for /L %%i in (1,1,10) do (
    cls
    echo.
    echo  ===================================================
    echo         Preparation du lancement
    echo  ===================================================
    echo.
    echo  [INFO] Chargement en cours...
    echo.
    
    if %%i==1 echo  [##                  ] 10%%
    if %%i==2 echo  [####                ] 20%%
    if %%i==3 echo  [######              ] 30%%
    if %%i==4 echo  [########            ] 40%%
    if %%i==5 echo  [##########          ] 50%%
    if %%i==6 echo  [############        ] 60%%
    if %%i==7 echo  [##############      ] 70%%
    if %%i==8 echo  [################    ] 80%%
    if %%i==9 echo  [##################  ] 90%%
    if %%i==10 echo  [####################] 100%%
    
    echo.
    timeout /t 1 /nobreak >nul
)

cls
echo.
echo  ===================================================
echo         Lancement
echo  ===================================================
echo.
echo  [OK] C'etait pas long, hein?
echo.
echo  [GO] Lancement de FiveM maintenant...
echo       Bon RP sur RPQC!
echo.
echo       Rejoins-nous: discord.gg/rpqc
echo.
timeout /t 2 /nobreak >nul

start "" "%LOCALAPPDATA%\FiveM\FiveM.exe"

echo  [OK] FiveM est lance!
echo.
timeout /t 3 /nobreak >nul
exit
