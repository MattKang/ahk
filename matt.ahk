#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 2 ; window string matching, subset
; SetTitleMatchMode, Slow

#Persistent
#SingleInstance Force

; Capture the 3 finger click which is sent to Windows as Left windows + Shift + Ctrl + F22
#^+F22::
    Click Middle
Return

; Expose with Left+Rightclick
~LButton & RButton::
~RButton & LButton::
  KeyWait LButton
  KeyWait RButton
  send {LWin down}{Tab}{LWin up}
return

; Horizontal scroll
NumpadSub & WheelUp::
  send {WheelLeft}
return
NumpadSub & WheelDown::
  send {WheelRight}
return

; Snap windows
NumpadSub & LButton::
  send {LWin down}{Left}{LWin up}
return
NumpadSub & RButton::
  send {LWin down}{Right}{LWin up}
return
NumpadSub & XButton1::
  KeyWait XButton1
  send {LWin down}{Down}{LWin Up}
return
NumpadSub & XButton2::
  send {LWin down}{Up}{LWin Up}
return

; Switch desktops
Numpad0::
  send {LCtrl down}{LWin down}{Left}{LWin up}{LCtrl up}
return
NumpadAdd::
  send {LCtrl down}{LWin down}{Right}{LWin up}{LCtrl up}
return

; Zoom
XButton1::
  send {LCtrl down}{-}{LCtrl up}
return
XButton2::
  send {LCtrl down}{=}{LCtrl up}
return
XButton1 & XButton2::
  send {LCtrl down}{0}{LCtrl up}
return

; Application specific
#ifWinActive, ahk_class CabinetWClass
Numpad1::
  send {LAlt down}{Left}{LAlt up}
return
Numpad2::
  send {LAlt down}{Up}{LAlt up}
return
Numpad3::
  send {LAlt down}{Right}{LAlt up}
return

#ifWinActive, Atom
Numpad1::
  send {LCtrl down}{k}{LCtrl up}
  send {LCtrl down}{p}{LCtrl up}
return
Numpad2::
  send {LCtrl down}{k}{LCtrl up}
  send {Right}
return
Numpad3::
  send {LCtrl down}{k}{LCtrl up}
  send {LCtrl down}{n}{LCtrl up}
return
Numpad4::
  send {LCtrl down}{PgUp}{LCtrl up}
return
Numpad5::
  send {LCtrl down}{w}{LCtrl up}
return
Numpad6::
  send {LCtrl down}{PgDn}{LCtrl up}
return
Numpad7::
  send {LCtrl down}{\}{LCtrl up}
return
Numpad9::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return

#ifWinActive, Edge
Numpad1::
  send {LAlt down}{Left}{LAlt up}
return
Numpad2::
  send {LCtrl down}{t}{LCtrl up}
return
Numpad3::
  send {LAlt down}{Right}{LAlt up}
return
Numpad4::
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
Numpad5::
  send {LCtrl down}{w}{LCtrl up}
return
Numpad6::
  send {LCtrl down}{Tab}{LCtrl up}
return
Numpad7::
  send {LCtrl down}{r}{LCtrl up}
return
Numpad9::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return

#ifWinActive, Opera
Numpad1::
  send {LAlt down}{Left}{LAlt up}
return
Numpad2::
  send {LCtrl down}{t}{LCtrl up}
return
Numpad3::
  send {LAlt down}{Right}{LAlt up}
return
Numpad4::
  send {LCtrl down}{LShift down}{Tab}{LShift up}{LCtrl up}
return
Numpad5::
  send {LCtrl down}{w}{LCtrl up}
return
Numpad6::
  send {LCtrl down}{Tab}{LCtrl up}
return
Numpad7::
  send {LCtrl down}{r}{LCtrl up}
return
Numpad9::
  send {LCtrl down}{LShift down}{t}{LShift up}{LCtrl up}
return
