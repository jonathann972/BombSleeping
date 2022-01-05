#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent
#SingleInstance, force
;test git


X := 478
Y := 217
Dodo := 5000
BOOT:
Loop
{

Run, https://app.bombcrypto.io
Sleep, 1000
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
;AFK MESSAGE
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\AFK.PNG
if ErrorLevel = 0
{
Goto, ACCOUNT2
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
;wrong network
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\wrongnetwork.PNG
if ErrorLevel = 0
{
Click, 1802,54
Sleep, 6000
Goto, PASSWORD1
}
}



;;;;;;;;;;;;;;;;;;;;
METAMASKSIGNER1:
Loop, 
{
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\signer.PNG
if ErrorLevel = 0
{
Click, 253,556
Sleep, 6000
Goto, LOOP1
}
}
;;;;;;;;;;;;;;;;;;;;
CONNECT1:
ToolTip, Connect Wallet, X, Y
Click, 954,611 ;connect wallet
Sleep, 5000
Goto, METAMASKSIGNER1
;;;;;;;;;;;;;;;;;;;;
HEROICON1:
ToolTip, Hero work, X, Y
Click, 1365,665
Sleep, 6000
Click, 870, 292
Sleep, 500
Click, 1010, 242
Sleep, 1000
Click, 963, 444
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
1008ERROR1:
ToolTip, 1008 ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
CONNECTIONERROR1:
ToolTip, CONNECTION ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
WRONG1:
ToolTip, WRONG ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
SOCKETERROR1:
ToolTip, SOCKET ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP1
;;;;;;;;;;;;;;;;;;;;
PASSWORD1:
ToolTip, METAMASK PASSWORD, X, Y
Send, Metavamp972
Sleep, 6000
Send, {Enter}
Sleep, 6000
Click, 326,40
Sleep, 6000
Click, 167,144
Sleep, 6000
Send, {ESC}
Sleep, 6000
Send, ^{F5}
Sleep, 6000
Goto, LOOP1

;;;;;;;;;;;;;;;;;;;;


LOOP:
Loop
{
ToolTip, IMAGE DATABASE, X, Y
;NOUVELLE MAP
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\NEW-MAP.PNG
if ErrorLevel = 0
{
Click, 955,621
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
Goto, CONNECT
}
;1008 ERROR
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\1008.PNG
if ErrorLevel = 0
{
Goto, 1008ERROR
}
;CONNECTION ERROR
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\connectionerror.PNG
if ErrorLevel = 0
{
Goto, CONNECTIONERROR
}
;HERO ICON
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\hero-icon.PNG
if ErrorLevel = 0
{
Goto, HEROICON
}
;wrong
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\wrong.PNG
if ErrorLevel = 0
{
Goto, WRONG
}
;socket error
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\socket.PNG
if ErrorLevel = 0
{
Goto, SOCKETERROR
}
}
;METAMASK SIGNER
METAMASKSIGNER:
Loop, 
{
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *40 %A_ScriptDir%\images\signer.PNG
if ErrorLevel = 0
{
Click, 253,556
Sleep, 6000
Goto, LOOP
}
}



ACCOUNT2:
ToolTip, ACCOUNT 2 CONNECTION, X, Y
Sleep, 6000
Click, 1802,54
Sleep, 6000
Click, 326,40
Sleep, 6000
Click, 192,215
Sleep, 6000
Send, {ESC}
Sleep, 6000
Send, ^{F5}
Sleep, 6000
Goto, LOOP
;;;;;;;;;;;;;;;;;;;;
CONNECT:
ToolTip, CONNECT WALLET, X, Y
Click, 954,611 ;connect wallet
Sleep, 6000
Goto, METAMASKSIGNER
;;;;;;;;;;;;;;;;;;;;
HEROICON:
ToolTip, HERO WORK, X, Y
Click, 1365,665
Sleep, 6000
Click, 870, 292
Sleep, 500
Click, 1010, 242
Sleep, 1000
Click, 963, 444
Goto, LOOP
;;;;;;;;;;;;;;;;;;;;
1008ERROR:
ToolTip, 1008 ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP
;;;;;;;;;;;;;;;;;;;;
CONNECTIONERROR:
ToolTip, CONNECTION ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP
;;;;;;;;;;;;;;;;;;;;
WRONG:
ToolTip, WRONG ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP
;;;;;;;;;;;;;;;;;;;;
SOCKETERROR:
ToolTip, SOCKET ERROR, X, Y
Send, ^{F5}
Sleep, 6000
Goto, LOOP
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
Goto, BOOT
}


}
F1::ExitApp