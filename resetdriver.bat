@echo off
Color 3F & MODE con:cols=80 lines=6
title Requesting to force display adapter to Intel
cls
echo Requesting to force display adapter to Intel
timeout 3 >nul
python kill.py
start explorer.exe
timeout 3 >nul
echo Process Done. Exiting..
exit
