#CommentFlag //
#InstallKeybdHook

// L3mur.ahk is intended to give keyboard layer functionality similar to what you would find on a 60% keyboard to non-repogrammable keyboards, for example a laptop keyboard. This script is based on Jarvis Prestidge's Pok3r.ahk script.

#Persistent
SetCapsLockState AlwaysOff

// Disable CapsLock
CapsLock::
+CapsLock::
!CapsLock::
^CapsLock::    
#CapsLock::    
^!CapsLock::   
^!#CapsLock::  
return

// Manually re-disable CapsLock with Ctrl-Alt-Space
^!Space:: SetCapsLockState AlwaysOff

// Media Controls
Capslock & q::Media_Prev
Capslock & e::Media_Next
Capslock & w::Media_Play_Pause

// Volume Control
Capslock & a::SoundSet, +1,, Mute
Capslock & s::SoundSet, -5
Capslock & d::SoundSet, +5

// Capslock + jkli (left, down, up, right)
Capslock & j::Send {Blind}{Left DownTemp}
Capslock & j up::Send {Blind}{Left Up}

Capslock & k::Send {Blind}{Down DownTemp}
Capslock & k up::Send {Blind}{Down Up}

Capslock & i::Send {Blind}{Up DownTemp}
Capslock & i up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}

// Capslock + ` (Escape)
Capslock & `::Send {Blind}{Esc DownTemp}
Capslock & ` up::Send {Blind}{Esc Up}

// Capslock + uohy (pgdown, pgup, home, end)
Capslock & h::SendInput {Blind}{Home Down}
Capslock & h up::SendInput {Blind}{Home Up}

Capslock & n::SendInput {Blind}{End Down}
Capslock & n up::SendInput {Blind}{End Up}

Capslock & u::SendInput {Blind}{PgUp Down}
Capslock & u up::SendInput {Blind}{PgUp Up}

Capslock & o::SendInput {Blind}{PgDn Down}
Capslock & o up::SendInput {Blind}{PgDn Up}


// Capslock + number keys equal function keys (F1-F10)
Capslock & 1::SendInput {Blind}{F1}
Capslock & 2::SendInput {Blind}{F2}
Capslock & 3::SendInput {Blind}{F3}
Capslock & 4::SendInput {Blind}{F4}
Capslock & 5::SendInput {Blind}{F5}
Capslock & 6::SendInput {Blind}{F6}
Capslock & 7::SendInput {Blind}{F7}
Capslock & 8::SendInput {Blind}{F8}
Capslock & 9::SendInput {Blind}{F9}
Capslock & 0::SendInput {Blind}{F10}
Capslock & -::SendInput {Blind}{F11}
Capslock & =::SendInput {Blind}{F12}

// Make Capslock & Backspace equivalent to delete
Capslock & BS::SendInput {Del Down}
Capslock & BS up::SendInput {Del Up}

// Make Capslock & semicolon (;) equivalent to end
Capslock & ;::SendInput {End Down}
Capslock & ; up::SendInput {End Up}

// Make Capslock & m equivalent to WinKey+m (show Desktop)
Capslock & m::SendInput {LWin Down}{m}{LWin UP}

// Make Capslock & Enter equivalent to Control+Enter
Capslock & Enter::SendInput {Ctrl down}{Enter}{Ctrl up}

// Make Capslock & Space equivalent to Control+Space
Capslock & Space::SendInput {Ctrl down}{Space}{Ctrl up}

// Make Capslock & p equivalent to PrintScreen
Capslock & p::SendInput {PrintScreen}

// Make CapsLock & y open the Windows Calculator
CapsLock & y::Run calc.exe

// Make CapsLock & c build a print statement for java
CapsLock & c::SendInput System.out.println()`;{Left 2}

// Make CapsLock & / build a comment construct for java
CapsLock & /::SendInput /*{Enter}{Space}*{Enter}*/{Up}{Space}

// Make CapsLock & , the previous media key
CapsLock & ,::SendInput {Media_Prev}

// Make CapsLock & . the next media key
CapsLock & .::SendInput {Media_Next}

// Make CapsLock & Right Shift the application menu key 
CapsLock & RShift::SendInput {AppsKey}