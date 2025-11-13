^F9::
; Show confirmation dialog
MsgBox, 4, Close All Windows, Are you sure you want to close all open windows?`n`n(Rainmeter windows will be skipped)
IfMsgBox No
    Return

WinGet, id, list, , , Program Manager
Loop, %id%
{
    StringTrimRight, this_id, id%a_index%, 0
    WinGetTitle, this_title, ahk_id %this_id%
    WinGetClass, this_class, ahk_id %this_id%
    
    ; Skip Rainmeter windows
    if (this_class = "RainmeterMeterWindow")
        continue
    
    WinClose, %this_title%
}
Return