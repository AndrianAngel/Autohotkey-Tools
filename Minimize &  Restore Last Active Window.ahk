lastWindows:=[]
#z::
  lastWindows.Insert(lastWindow:=WinExist("A"))
  WinGet,MinMax,MinMax,ahk_id %lastWindow%
  If MinMax!=-1
    WinMinimize, ahk_id %lastWindow%
Return
#q::
If !lastWindow:=lastWindows.Remove()
   return ;nothing to restore
WinGet,MinMax,MinMax,ahk_id %lastWindow%
If MinMax=-1
   WinRestore, ahk_id %lastWindow%
Return