@echo off
color a
title installer ©made by dor©

echo "unziping"
powershell -command Expand-Archive XXzip-locationcXX -DestinationPath C:\Temp\
echo "finish unziping"

echo "installing program1"
start C:\Temp\XXprogram1XX\XXprogram1XX.exe
echo "installing program1"

echo "installing program2"
start C:\Temp\XXprogram2XX\XXprogram2XX.exe
echo "finish installing program2"

echo "starting Local-Administrator-creator"
cmd /c start C:\temp\all_installer\Local-Administrator-creator.bat

pause

echo "Disabling Hyper-V"
powershell -command "Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-all -NoRestart"
echo "finish Disabling Hyper-V"                                    

pause

shutdown -r -t 30

echo.
echo Finished operation.
timeout 5
