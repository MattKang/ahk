#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 2 ; window string matching, subset
; SetTitleMatchMode, Slow

#Persistent
#SingleInstance Force

; Variables
HotkeyTriggered := false ; ensures multiple gestures don't trigger simultaneously

; Capture the 3 finger click which is sent to Windows as Left windows + Shift + Ctrl + F22
#^+F22::
    Click Middle
Return

; Task View
XButton1 & XButton2::
XButton2 & XButton1::
  send {LWin down}{Tab}{LWin up}
return

; Snap windows & Switch desktops
XButton1 & WheelUp::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LWin down}{Up}{LWin Up}
return
XButton1 & WheelDown::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LWin down}{Down}{LWin Up}
return
XButton1 & WheelLeft::
  send {LWin down}{Left}{LWin up}
return
XButton1 & WheelRight::
  send {LWin down}{Right}{LWin up}
return
XButton1 & LButton up::
  send {LCtrl down}{LWin down}{Left}{LWin up}{LCtrl up}
return
XButton1 & RButton up::
  send {LCtrl down}{LWin down}{Right}{LWin up}{LCtrl up}
return


; Application specific

#ifWinActive, ahk_class CabinetWClass
XButton2 & WheelLeft::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Left}{LAlt up}
return
XButton2 & WheelUp::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Up}{LAlt up}
return
XButton2 & WheelRight::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Right}{LAlt up}
return

#ifWinActive, ahk_exe Atom.exe
XButton2 & WheelLeft::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{k}{LCtrl up}
  send {LCtrl down}{p}{LCtrl up}
return
XButton2 & WheelUp::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{k}{LCtrl up}
  send {Right}
return
XButton2 & WheelRight::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{k}{LCtrl up}
  send {LCtrl down}{n}{LCtrl up}
return
XButton2 & WheelDown::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{w}{LCtrl up}
return
XButton2 & LButton::
  send {LCtrl down}{PgUp}{LCtrl up}
return
XButton2 & RButton up::
  send {LCtrl down}{PgDn}{LCtrl up}
return
XButton2 & MButton::
  send {LCtrl down}{\}{LCtrl up}
return
Numpad9::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return

#ifwinActive, Drawboard PDF
XButton2 & WheelLeft::
  send {Left}
return
XButton2 & WheelUp::
  send {LCtrl down}{WheelUp}{LCtrl up}
return
XButton2 & WheelRight::
  send {Right}
return
XButton2 & WheelDown::
  send {LCtrl down}{WheelDown}{LCtrl up}
return
XButton2 & LButton up::
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
XButton2 & RButton up::
  send {LCtrl down}{Tab}{LCtrl up}
return
XButton2 & MButton::
  send {Right}{Left}
return

#ifWinActive, Edge
XButton2 & WheelUp::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{t}{LCtrl up}
return
XButton2 & WheelDown::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{w}{LCtrl up}
return
XButton2 & WheelLeft::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Left}{LAlt up}
return
XButton2 & WheelRight::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Right}{LAlt up}
return
XButton2 & LButton::
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
XButton2 & RButton up::
  send {LCtrl down}{Tab}{LCtrl up}
return
XButton2 & MButton::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return

#ifWinActive, ahk_exe Matlab.exe
XButton2 & WheelLeft::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
XButton2 & WheelRight::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{Tab}{LCtrl up}
return
XButton2 & WheelDown::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{w}{LCtrl up}
return
XButton2 & LButton::
  send {LCtrl down}{PgUp}{LCtrl up}
return
XButton2 & RButton up::
  send {LCtrl down}{PgDn}{LCtrl up}
return

#ifWinActive, ahk_exe Opera.exe
XButton2 & WheelLeft::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Left}{LAlt up}
return
XButton2 & WheelUp::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{t}{LCtrl up}
return
XButton2 & WheelRight::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LAlt down}{Right}{LAlt up}
return
XButton2 & WheelDown::
  if ( A_TimeSincePriorHotkey > 200 )
  send {LCtrl down}{w}{LCtrl up}
return
XButton2 & LButton::
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
XButton2 & RButton up::
  send {LCtrl down}{Tab}{LCtrl up}
return
XButton2 & MButton::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return
