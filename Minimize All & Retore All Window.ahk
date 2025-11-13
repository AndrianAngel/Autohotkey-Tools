; Minimize All Windows
#s:: 
    WinGet, WindowList, List,,, Program Manager
    Loop, %WindowList%
    {
        WinGetClass, Class, % "ahk_id " . WindowList%A_Index%
        IF (Class <> "Shell_SecondaryTrayWnd" And Class <> "Shell_TrayWnd" And Class <> "RainmeterMeterWindow")
            WinMinimize, % "ahk_id " . WindowList%A_Index%
    }
return

; Restore All Windows
#w:: 
    WinGet, WindowList, List,,, Program Manager
    Loop, %WindowList%
    {
        WinGetClass, Class, % "ahk_id " . WindowList%A_Index%
        IF (Class <> "Shell_SecondaryTrayWnd" And Class <> "Shell_TrayWnd" And Class <> "RainmeterMeterWindow")
            WinRestore, % "ahk_id " . WindowList%A_Index%
    }
return