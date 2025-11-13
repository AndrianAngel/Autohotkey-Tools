/*
o------------------------------------------------------------o
|Using Keyboard Numpad as a Mouse - NO SCROLLLOCK VERSION   |
(------------------------------------------------------------)
| Fixed for keyboards without ScrollLock key                |
|                                                            |
| QUICK START:                                               |
| 1. Double-tap NumLock quickly to enable mouse mode        |
| 2. NumPad keys now control the mouse!                     |
| 3. Double-tap NumLock again to disable                    |
|                                                            |
| IMPORTANT: Keep NumLock ON while using mouse mode         |
|                                                            |
|------------------------------------------------------------|
| Keys                  | Description                        |
|------------------------------------------------------------|
| NumLock (double-tap)  | Toggle mouse mode ON/OFF           |
|-----------------------|------------------------------------|
| NumPad0               | Left mouse button click            |
| NumPad5               | Middle mouse button click          |
| NumPadDot             | Right mouse button click           |
| NumPadDiv (/)         | X1 mouse button click              |
| NumPadMult (*)        | X2 mouse button click              |
| NumPadSub (-)         | Mouse wheel up                     |
| NumPadAdd (+)         | Mouse wheel down                   |
|-----------------------|------------------------------------|
| NumPad 8/2/4/6        | Move Up/Down/Left/Right            |
| NumPad 7/9/1/3        | Move Diagonally                    |
|-----------------------|------------------------------------|
| CTRL + NumPad Keys    | Speed adjustments                  |
|-----------------------|------------------------------------|
| CTRL + NumPad7/1      | Inc/Dec acceleration               |
| CTRL + NumPad8/2      | Inc/Dec initial speed              |
| CTRL + NumPad9/3      | Inc/Dec maximum speed              |
o------------------------------------------------------------o
*/

#SingleInstance Force
#MaxHotkeysPerInterval 500
#UseHook
#InstallKeybdHook

; Configuration
MouseSpeed := 3
MouseAccelerationSpeed := 30
MouseMaxSpeed := 80

; Runtime variables
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
MouseModeEnabled := false
LastNumLockPress := 0

SetKeyDelay, -1
SetMouseDelay, -1

; Show startup message
TrayTip, Numpad Mouse Ready, Double-tap NumLock to enable mouse mode, 3, 1

return

; ===== NUMLOCK DOUBLE-TAP DETECTION =====
~NumLock::
CurrentTime := A_TickCount
TimeSinceLastPress := CurrentTime - LastNumLockPress

; If pressed within 300ms, it's a double-tap
If (TimeSinceLastPress < 300 && TimeSinceLastPress > 50) {
    MouseModeEnabled := !MouseModeEnabled
    If (MouseModeEnabled) {
        TrayTip, Numpad Mouse, MODE: ENABLED`nNumPad controls mouse now!, 2, 1
        ; Turn NumLock back on for numpad to work
        SetNumLockState, On
    } else {
        TrayTip, Numpad Mouse, MODE: DISABLED`nNumPad back to normal, 1, 1
    }
    LastNumLockPress := 0  ; Reset to prevent triple-tap
} else {
    LastNumLockPress := CurrentTime
}
return

; ===== MOUSE CLICKS =====
#If MouseModeEnabled

*NumPad0::
GetKeyState, already_down, LButton
If (already_down = "D")
    return
Click Down Left
KeyWait, NumPad0
Click Up Left
return

*NumPad5::
GetKeyState, already_down, MButton
If (already_down = "D")
    return
Click Down Middle
KeyWait, NumPad5
Click Up Middle
return

*NumPadDot::
GetKeyState, already_down, RButton
If (already_down = "D")
    return
Click Down Right
KeyWait, NumPadDot
Click Up Right
return

*NumPadDiv::
Click Down X1
KeyWait, NumPadDiv
Click Up X1
return

*NumPadMult::
Click Down X2
KeyWait, NumPadMult
Click Up X2
return

; ===== MOUSE WHEEL =====
*NumPadSub::
Loop {
    MouseClick, WheelUp,,, 1, 0
    Sleep, 50
    GetKeyState, state, NumPadSub, P
    If (state = "U")
        break
}
return

*NumPadAdd::
Loop {
    MouseClick, WheelDown,,, 1, 0
    Sleep, 50
    GetKeyState, state, NumPadAdd, P
    If (state = "U")
        break
}
return

; ===== MOUSE MOVEMENT =====
*NumPad8::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, 0, -MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad8, P
    If (state = "U")
        break
}
return

*NumPad2::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, 0, MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad2, P
    If (state = "U")
        break
}
return

*NumPad4::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, -MouseCurrentSpeed, 0, 0, R
    Sleep, 10
    GetKeyState, state, NumPad4, P
    If (state = "U")
        break
}
return

*NumPad6::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, MouseCurrentSpeed, 0, 0, R
    Sleep, 10
    GetKeyState, state, NumPad6, P
    If (state = "U")
        break
}
return

*NumPad7::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, -MouseCurrentSpeed, -MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad7, P
    If (state = "U")
        break
}
return

*NumPad9::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, MouseCurrentSpeed, -MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad9, P
    If (state = "U")
        break
}
return

*NumPad1::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, -MouseCurrentSpeed, MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad1, P
    If (state = "U")
        break
}
return

*NumPad3::
MouseCurrentSpeed := MouseSpeed
MouseCurrentAccelerationSpeed := 0
Loop {
    If (MouseCurrentSpeed < MouseMaxSpeed && MouseAccelerationSpeed >= 1) {
        MouseCurrentAccelerationSpeed += 0.001 * MouseAccelerationSpeed
        MouseCurrentSpeed += MouseCurrentAccelerationSpeed
    }
    MouseMove, MouseCurrentSpeed, MouseCurrentSpeed, 0, R
    Sleep, 10
    GetKeyState, state, NumPad3, P
    If (state = "U")
        break
}
return

; ===== SPEED ADJUSTMENTS (CTRL + NumPad) =====
^NumPad8::
MouseSpeed++
ToolTip, Mouse speed: %MouseSpeed% pixels
SetTimer, RemoveToolTip, 1000
return

^NumPad2::
If (MouseSpeed > 1)
    MouseSpeed--
ToolTip, Mouse speed: %MouseSpeed% pixel(s)
SetTimer, RemoveToolTip, 1000
return

^NumPad7::
MouseAccelerationSpeed++
ToolTip, Mouse acceleration: %MouseAccelerationSpeed%
SetTimer, RemoveToolTip, 1000
return

^NumPad1::
If (MouseAccelerationSpeed > 1)
    MouseAccelerationSpeed--
ToolTip, Mouse acceleration: %MouseAccelerationSpeed%
SetTimer, RemoveToolTip, 1000
return

^NumPad9::
MouseMaxSpeed++
ToolTip, Mouse max speed: %MouseMaxSpeed% pixels
SetTimer, RemoveToolTip, 1000
return

^NumPad3::
If (MouseMaxSpeed > 1)
    MouseMaxSpeed--
ToolTip, Mouse max speed: %MouseMaxSpeed% pixels
SetTimer, RemoveToolTip, 1000
return

#If

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

;Win+W to exit the script
#w:: ExitApp