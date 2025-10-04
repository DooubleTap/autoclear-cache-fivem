@echo off
echo.
echo ===========================================
echo   Delete ta Cache FiveM automatiquement
echo ===========================================
echo.
echo On vide le cache!...
echo.

REM Delete cache folders using %LOCALAPPDATA% for any user
rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\cache" 2>nul
rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\server-cache" 2>nul
rd /s /q "%LOCALAPPDATA%\FiveM\FiveM.app\data\server-cache-priv" 2>nul

echo C'est fait!
timeout /t 1 /nobreak >nul
echo.
echo On attend 10 secondes avant de lancer FiveM...
timeout /t 1 /nobreak >nul
echo Prends ton temps, on est pas presse!
timeout /t 1 /nobreak >nul
echo C'est pour que tout se charge bien :p
timeout /t 1 /nobreak >nul
echo.

REM Progress bar
echo [          ] 0%%
timeout /t 1 /nobreak >nul
echo [#         ] 10%%
timeout /t 1 /nobreak >nul
echo [##        ] 20%%
timeout /t 1 /nobreak >nul
echo [###       ] 30%%
timeout /t 1 /nobreak >nul
echo [####      ] 40%%
timeout /t 1 /nobreak >nul
echo [#####     ] 50%%
timeout /t 1 /nobreak >nul
echo [######    ] 60%%
timeout /t 1 /nobreak >nul
echo [#######   ] 70%%
timeout /t 1 /nobreak >nul
echo [########  ] 80%%
timeout /t 1 /nobreak >nul
echo [######### ] 90%%
timeout /t 1 /nobreak >nul
echo [##########] 100%%
echo.
echo Tu vois, c'etait pas long!
echo Lancement de FiveM en cours...
start "" "%LOCALAPPDATA%\FiveM\FiveM.exe"

exit
