@echo off
Color 3F & MODE con:cols=80 lines=6
title Requesting to force display adapter to Intel
cls
echo Requesting to force display adapter to Intel
timeout 3 >nul
python D:\Vault\programing\HDMIdetect\kill.py
start explorer.exe





@REM REM List of applications to be killed
@REM set "applications_to_kill=lively.exe microsoft.photos.exe notepad.exe wallpaper32.exe winstore.app.exe whatsapp.exe PowerToys.exe battle.net.exe acrobatnotificationclient.exe yourphoneserver.exe epowerbutton_nb.exe telegram.exe yourphone.exe p508poweragent.exe steamwebhelper.exe lockapp.exe macroagent.exe origin.exe searchapp.exe dllhost.exe spotify.exe msedge.exe powertoys.exe startmenuexperiencehost.exe epicwebhelper.exe dropbox.exe calculator.exe phoneexperiencehost.exe gamebar.exe UplayWebCore.exe igcc.exe overwolf.exe steam.exe snap camera.exe powertoys.exe epicgameslauncher.exe uplay.exe wemod.exe rtkuwp.exe powertoys.colorpickerui.exe msedgewebview2.exe textinputhost.exe searchhost.exe nvdia share.exe discord.exe code.exe chrome.exe asus_framework.exe"

@REM REM Kill all the listed applications
@REM for %%a in (%applications_to_kill%) do (
@REM     taskkill /F /IM "%%a" >nul 2>&1
@REM )

@REM REM Check if Discord, VS Code, and Chrome were killed
@REM set "dis="
@REM set "code="
@REM set "chr="

@REM tasklist /FI "IMAGENAME eq discord.exe" 2>NUL | find /I /N "discord.exe">NUL
@REM if "%ERRORLEVEL%"=="0" (
@REM     taskkill /f /im discord.exe
@REM     SET "dis=1"
@REM )

@REM tasklist /FI "IMAGENAME eq code.exe" 2>NUL | find /I /N "code.exe">NUL
@REM if "%ERRORLEVEL%"=="0" (
@REM     taskkill /f /im code.exe
@REM     SET "code=1"
@REM )

@REM tasklist /FI "IMAGENAME eq chrome.exe" 2>NUL | find /I /N "chrome.exe">NUL
@REM if "%ERRORLEVEL%"=="0" (
@REM     taskkill /f /im chrome.exe
@REM     SET "chr=1"
@REM )

@REM cls
@REM if /I "%dis%" == "1" (
@REM     start "" "%LOCALAPPDATA%\Discord\Update.exe" --processStart Discord.exe
@REM     echo Discord.exe Restarted
@REM )

@REM if /I "%code%" == "1" (
@REM     start "" "%LOCALAPPDATA%\Programs\Microsoft\VS Code\Code.exe"
@REM     echo Code.exe Restarted
@REM )

@REM if /I "%chr%" == "1" (
@REM     start "" "C:\Program Files\Google\Chrome\Application\chrome.exe"
@REM     echo chrome.exe Restarted
@REM )

timeout 3 >nul
echo Process Done. Exiting..
exit
