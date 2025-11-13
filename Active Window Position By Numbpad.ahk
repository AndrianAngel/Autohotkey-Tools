#Requires AutoHotkey v2.0

; Window positioning with Alt+Numpad
; Positions active window to different areas of the screen

!Numpad8::PositionWindow("up")           ; Top center
!Numpad2::PositionWindow("down")         ; Bottom center
!Numpad4::PositionWindow("left")         ; Left center
!Numpad6::PositionWindow("right")        ; Right center
!Numpad7::PositionWindow("up-left")      ; Top left
!Numpad9::PositionWindow("up-right")     ; Top right
!Numpad1::PositionWindow("down-left")    ; Bottom left
!Numpad3::PositionWindow("down-right")   ; Bottom right
!Numpad5::PositionWindow("center")       ; Center (bonus)

PositionWindow(position) {
    hwnd := WinExist("A")
    if (!hwnd)
        return
    
    ; Get monitor work area (excludes taskbar)
    MonitorGetWorkArea(MonitorGetPrimary(), &left, &top, &right, &bottom)
    
    screenWidth := right - left
    screenHeight := bottom - top
    
    ; Get window size (keep current size)
    WinGetPos(, , &winWidth, &winHeight, hwnd)
    
    ; Calculate half sizes for positioning
    halfWidth := screenWidth / 2
    halfHeight := screenHeight / 2
    
    ; Determine position based on direction
    switch position {
        case "up":
            x := left + (screenWidth - winWidth) / 2
            y := top
        case "down":
            x := left + (screenWidth - winWidth) / 2
            y := bottom - winHeight
        case "left":
            x := left
            y := top + (screenHeight - winHeight) / 2
        case "right":
            x := right - winWidth
            y := top + (screenHeight - winHeight) / 2
        case "up-left":
            x := left
            y := top
        case "up-right":
            x := right - winWidth
            y := top
        case "down-left":
            x := left
            y := bottom - winHeight
        case "down-right":
            x := right - winWidth
            y := bottom - winHeight
        case "center":
            x := left + (screenWidth - winWidth) / 2
            y := top + (screenHeight - winHeight) / 2
    }
    
    ; Move window to calculated position
    WinMove(x, y, , , hwnd)
}