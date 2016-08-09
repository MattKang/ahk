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
  send {LWin down}{Tab}{LWin up}
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
  send {LCtrl down}{-}{LCtrl Up}
return
XButton2::
  send {LCtrl down}{=}{LCtrl Up}
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
