If (A_IsAdmin) {
    Gui, Add, Progress, w300 h20 cDefault vProgress, 0
    Gui, Add, ListBox, w300 r10 vLog
    Gui, Show, w320 h190, Uninstaller
    FileRemoveDir, C:\Program Files\ColorPicker, 1
    GuiControl,, Progress, 50
    GuiControl,, Log, FileRemoveDir, C:\Program Files\ColorPicker, 1
    FileDelete, %A_AppData%\Microsoft\Windows\Start Menu\Programs\ColorPicker.lnk
    GuiControl,, Progress, 100
    GuiControl,, Log, FFileDelete, %A_AppData%\Microsoft\Windows\Start Menu\Programs\ColorPicker.lnk
    Sleep, 1000
    Gui, Destroy
    ExitApp
} 
Else {
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}