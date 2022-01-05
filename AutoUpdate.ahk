﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

myzip := A_ScriptDir "\Update.zip"				 
unzipfolder := A_ScriptDir "\update"				 
url = https://github.com/jonathann972/BombSleeping/archive/refs/heads/main.zip
Filename = Update.zip

FileReadLine, VNum, %A_WorkingDir%\version.txt, 1 
	if ErrorLevel = 1
	Vnum = 0
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/jonathann972/BombSleeping/main/Version.txt", true)
whr.Send()

whr.WaitForResponse() 
version := whr.ResponseText
MsgBox, 1, Press OK to download, Your current version is %Vnum%. This latest is %version%.
	IfMsgBox OK
		UrlDownloadToFile, *0 %url%, %A_WorkingDir%\%Filename%
		if ErrorLevel = 1
			MsgBox, There was some error updating the file. You may have the latest version, or it is blocked.
		else if ErrorLevel = 0
			MsgBox, The update/ download appears to have been successful or you clicked cancel. Please check the update folder. 
		else 
			MsgBox, some other crazy error occured. 
Unz(myzip, unzipfolder)



Unz(sZip, sUnz)									
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}

	Goto, MOVE
Return

MOVE:
FileMove, %A_ScriptDir%\update\BombSleeping-main\*.*, %A_ScriptDir%, 1
FileRemoveDir, update, 1
FileDelete, *.zip
SLeep, 1500
MsgBox, You can run the script properly (UP TO DATE)