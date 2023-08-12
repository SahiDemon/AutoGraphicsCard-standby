if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
@echo off
Color 3F & MODE con:cols=50 lines=5
title VGA APP KILLER
echo ..
:main
SET /a "con=0"

:startt
cls
FOR /F "tokens=* USEBACKQ" %%F IN (`wmic desktopmonitor get PNPDeviceId ^| findstr "DISPLAY\IOD1807\5&3954046&0&UID4352"`) DO (
SET var=%%F
SET "new=DISPLAY\IOD1807\5&3954046&0&UID4352"
)
if /I "%var%" == "%new%"  goto :run



@REM if /I "%con%" == "1"  goto :check
echo External Monitor Detected! Wating for external monitor to be disconnected..
SET /a "con=1"
timeout 10 >nul
goto :check



:run
echo No External Monitor Detected! Wating for external monitor to be connected..
timeout 10 >nul
goto :startt



:check
cls
SET /a "con=2"
FOR /F "tokens=* USEBACKQ" %%F IN (`wmic desktopmonitor get PNPDeviceId ^| findstr "DISPLAY\IOD1807\5&3954046&0&UID4352"`) DO (
SET var2=%%F
SET "new1=DISPLAY\IOD1807\5&3954046&0&UID4352"
)
if /I "%var2%" == "%new1%"  goto :kill
echo External Monitor Detected! Wating for external monitor to be disconnected..
timeout 10 >nul
goto :check


:kill
timeout 3 >nul
cls
Color 0F & MODE con:cols=80 lines=15
taskkill /F /IM microsoft.photos.exe
taskkill /F /IM winstore.app.exe
taskkill /F /IM whatsapp.exe
taskkill /F /IM battle.net.exe
taskkill /F /IM acrobatnotificationclient.exe
taskkill /F /IM yourphoneserver.exe
taskkill /F /IM epowerbutton_nb.exe
taskkill /F /IM telegram.exe
taskkill /F /IM yourphone.exe
taskkill /F /IM steamwebhelper.exe
taskkill /F /IM chrome.exe
taskkill /F /IM lockapp.exe
taskkill /F /IM origin.exe
taskkill /F /IM searchapp.exe
taskkill /F /IM dllhost.exe
taskkill /F /IM spotify.exe
taskkill /F /IM telegram.exe
taskkill /F /IM msedge.exe
taskkill /F /IM powertoys.exe
taskkill /F /IM startmenuexperiencehost.exe
taskkill /F /IM epicwebhelper.exe
taskkill /F /IM dropbox.exe
taskkill /f /im calculator.exe
taskkill /f /im phoneexperiencehost.exe
taskkill /f /im gamebar.exe
taskkill /f /im UplayWebCore.exe
taskkill /f /im igcc.exe
taskkill /f /im overwolf.exe
taskkill /f /im steam.exe
taskkill /f /im snap camera.exe
taskkill /f /im powertoys.exe
taskkill /f /im uplay.exe
taskkill /f /im textinputhost.exe
taskkill /f /im "nvdia share.exe"


tasklist /FI "IMAGENAME eq discord.exe" 2>NUL | find /I /N "discord.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /f /im discord.exe ^| SET /a "dis=1"
tasklist /FI "IMAGENAME eq code.exe" 2>NUL | find /I /N "code.exe">NUL
if "%ERRORLEVEL%"=="0" taskkill /f /im code.exe ^| SET /a "code=1"


timeout 5 >nul
cls
if /I "%dis%" == "1" start discord.exe ^| echo Discord.exe Restarted
if /I "%dis%" == "1" start code.exe ^| echo Code.exe Restarted
timeout 3 >nul
Color 3F & MODE con:cols=80 lines=7
echo Process Done. Exiting..
goto :main
timeout 3 >nul
