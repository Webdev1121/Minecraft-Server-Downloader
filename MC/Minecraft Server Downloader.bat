@echo off
color 4
echo jangan delete folder curl-7.82.0-win64-mingw!
pause
CLS

COLOR B
echo **********************************************************************************
echo =========================Di bikin oleh 1121Developer#3978=========================
echo ==================================================================================
echo **********************************************************************************
echo Ini Berguna untuk yang nub soal setup minecraft server
echo Pilih mana??
echo Download JAR Minecraft Server : [ 1 ]
echo Run Minecraft Server : [ 2 ]
echo Keluar [C]
set /p Input=Enter 1,2 OR C:
If /I "%Input%"=="1" goto download
If /I "%Input%"=="2" goto runserver
If /I "%Input%"=="C" goto C


:download
echo Nanti Ada File server.jar
start curl-7.82.0-win64-mingw\bin\curl.exe "https://api.purpurmc.org/v2/purpur/1.18.2/latest/download" -o server.jar
:runserver
echo Ram Server Lu berapa??
echo 2GB : [ 1 ]
echo 4GB : [ 2 ]
echo Biar Lo Sendiri Yang Run (kalo melebihi 4GB) [C]
set /p Input=Enter 1,2 OR C:
If /I "%Input%"=="1" goto 2gb
If /I "%Input%"=="2" goto 4gb
If /I "%Input%"=="C" goto Close

:2gb
echo oke
echo pastiin lu udah download java 17 (terbaru)
java -Xmx2048M -Xms2048M -jar server.jar 
pause
exit

:4gb
echo oke
echo pastiin lu udah download java 17 (terbaru)
java -Xmx4096M -Xms4096M -jar server.jar 
pause 
exit

:c
echo Keluar??
pause
exit
