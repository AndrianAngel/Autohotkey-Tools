;When $ is pressed, minimize all windows then open Ctrl+Alt+Tab switcher
$::
   ; First minimize all windows to reset the order
   Send, #{m}
   ; Small delay to let minimize complete
   Sleep, 100
   ; Then open the task switcher
   Send, ^!{tab}
   
   ; Move to the leftmost position first
   Send {Home}
   ; Set a flag
   SetTimer, EnableNumberKeys, -50
Return

EnableNumberKeys:
   Hotkey, NumPad1, SelectApp1, On
   Hotkey, NumPad2, SelectApp2, On
   Hotkey, NumPad3, SelectApp3, On
   Hotkey, NumPad4, SelectApp4, On
   Hotkey, NumPad5, SelectApp5, On
   Hotkey, NumPad6, SelectApp6, On
   Hotkey, NumPad7, SelectApp7, On
   Hotkey, NumPad8, SelectApp8, On
   Hotkey, NumPad9, SelectApp9, On
   ; Disable after 10 seconds
   SetTimer, DisableNumberKeys, -10000
Return

; Shifted number key handlers - each moves right from HOME position then selects
SelectApp1:
   Send {Enter}
   Gosub, DisableNumberKeys
Return

SelectApp2:
   Send {Right}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp3:
   Send {Right 2}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp4:
   Send {Right 3}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp5:
   Send {Right 4}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp6:
   Send {Right 5}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp7:
   Send {Right 6}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp8:
   Send {Right 7}{Enter}
   Gosub, DisableNumberKeys
Return

SelectApp9:
   Send {Right 8}{Enter}
   Gosub, DisableNumberKeys
Return

DisableNumberKeys:
   Hotkey, NumPad1, Off
   Hotkey, NumPad2, Off
   Hotkey, NumPad3, Off
   Hotkey, NumPad4, Off
   Hotkey, NumPad5, Off
   Hotkey, NumPad6, Off
   Hotkey, NumPad7, Off
   Hotkey, NumPad8, Off
   Hotkey, NumPad9, Off
Return

;Alt+Escape to exit the script
!Escape:: ExitApp