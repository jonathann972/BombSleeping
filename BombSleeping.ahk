#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#SingleInstance, force
SetTimer, VERIF, -2000000
BOOT:
password =
FileRead, password, %A_ScriptDir%\password.txt
X := 478
Y := 217
Dodo := 5000
Loop
{

Run, https://app.bombcrypto.io
Sleep, 1000
WinActivate, Bombcrypto ahk_exe chrome.exe
Sleep, 3000
Click, 1802,54
Sleep, 10000
Goto, PASSWORD1
LOOP1:
Loop
{
ToolTip, IMAGE DATABASE, X, Y
;NOUVELLE MAP
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\NEW-MAP.PNG
if ErrorLevel = 0
{
Click, 955,621
}

;TERM AND CONDITION
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\ACCEPT.PNG
if ErrorLevel = 0
{
Click, 725,546
Sleep, 3000
Click, 955,629
}
;AFK MESSAGE
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\AFK.PNG
if ErrorLevel = 0
{
Goto, REBOOT
}
;CONNECT WALLET
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\connect-wallet.PNG
if ErrorLevel = 0
{
Goto, CONNECT1
}
;1008 ERROR
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\1008.PNG
if ErrorLevel = 0
{
Goto, 1008ERROR1
}
;DATA CONFLICT
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\dataconflict.PNG
if ErrorLevel = 0
{
Goto, DATACONFLICT
}
;CONNECTION ERROR
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\connectionerror.PNG
if ErrorLevel = 0
{
Goto, CONNECTIONERROR1
}
;HERO ICON
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\hero-icon.PNG
if ErrorLevel = 0
{
Goto, HEROICON1
}
;wrong
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\wrong.PNG
if ErrorLevel = 0
{
Goto, WRONG1
}
;socket error
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\socket.PNG
if ErrorLevel = 0
{
Goto, SOCKETERROR1
}
;10Min
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\10min.PNG
if ErrorLevel = 0
{
Goto, 10MIN
}
;Send all hero
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\ALL.PNG
if ErrorLevel = 0
{
Goto, ALL
}
;KICK
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\KICK.PNG
if ErrorLevel = 0
{
Goto, KICK
}
;wrong network
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\wrongnetwork.PNG
if ErrorLevel = 0
{
Click, 1802,54
Sleep, 6000
Goto, PASSWORD1
}
}
;1001 ERROR
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\1001.PNG
if ErrorLevel = 0
{
Goto, 1001ERROR
}
;USER NOT Log
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\usernotlog.PNG
if ErrorLevel = 0
{
Goto, USERNOTLOGERROR
}
;CANNOT CONNECT TO THE SERVER
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\cannotconnect.PNG
if ErrorLevel = 0
{
Goto, CANNOTCONNECT
}
;SERVER MAINTENANCE
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\servermaintenance.PNG
if ErrorLevel = 0
{
Goto, maintenance
}

;;;;;;;;;;;;;;;;;;;;
maintenance:
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
VERIF:
SetTimer, VERIF, Off
SetTimer, VERIF, Delete
Goto, REBOOT
;;;;;;;;;;;;;;;;;;;;
ALL:
ToolTip, ALL, X, Y
Click, 870, 339
Sleep, 2000
Click, 870,321
Sleep, 2000
Click, 1010, 282
Sleep, 1500
Click, 1016, 275
Sleep, 1500
Click, 954, 461
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
10MIN:
ToolTip, ERROR 10MIN, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
CONNECT1:
ToolTip, Connect Wallet, X, Y
Click, 954,656 ;connect wallet
Sleep, 1500
Click, 969,579
Sleep, 1500
Sleep, 10000
Click, 253,556
Sleep, 4000
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
HEROICON1:
ToolTip, Hero work, X, Y
Click, 1354,718
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
1008ERROR1:
ToolTip, 1008 ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
CONNECTIONERROR1:
ToolTip, CONNECTION ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
DATACONFLICT:
ToolTip, DATA CONFLICT, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
KICK:
ToolTip, KICK, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
WRONG1:
ToolTip, WRONG ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
SOCKETERROR1:
ToolTip, SOCKET ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
PASSWORD1:
ToolTip, METAMASK PASSWORD, X, Y
Send, %password%
Sleep, 2000
Send, {Enter}
Sleep, 1500
Send, {ESC}
Sleep, 1500
Send, ^{F5}
Sleep, 2500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
1001ERROR:
ToolTip, 1008 ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
USERNOTLOGERROR:
ToolTip, USERNOTLOG ERROR, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
CANNOTCONNECT:
ToolTip, CANNOT CONNECT, X, Y
Send, ^{F5}
Sleep, 1500
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;

REBOOT:
WinClose, Bombcrypto - Google Chrome
Loop, 1
{
	initSecs := Dodo ; 40mins
	Gui, 99:+AlwaysOnTop	
	Gui, 99:font,s20 bold,Verdana
	Gui, 99: +Caption +Border -sysmenu
	Gui, 99:add, text, x10 y10 w150 h30 center vTX , %initSecs%
	Gui, 99:Show,,Sleep time left
	loop % initSecs-1 {		
	GuiControl,99:,TX,% Frmt(--initSecs)
	sleep, 1000
}
	Gui, 99:Destroy
	Frmt(secs) {
	time = 20000101
	time += %secs%, seconds
	FormatTime, mmss, %time%, HH:mm:ss
	return mmss
}
SetTimer, VERIF, 2000000
Run, https://app.bombcrypto.io
Sleep, 1000
WinActivate, Bombcrypto ahk_exe chrome.exe
Goto, LOOP1
}


}
F1::ExitApp