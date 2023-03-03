#SingleInstance, force
If (A_IsAdmin) {
    Gui, Add, Progress, w300 h20 cDefault vProgress, 0
    Gui, Add, ListBox, w300 r10 vLog
    Gui, Show, w320 h190, Installer
    BlockInput, On
    GuiControl,, Progress, 10
    GuiControl,, Log, BlockInput - On
    FileCreateDir, C:\Program Files\ColorPicker
    GuiControl,, Progress, 20
    GuiControl,, Log, FileCreateDir, C:\Program Files\ColorPicker
    UrlDownloadToFile, https://github.com/Lartrax/ColorPicker/releases/download/v1.2/archive.exe, C:\Program Files\ColorPicker\archive.exe
    GuiControl,, Progress, 30
    GuiControl,, UrlDownloadToFile, https://github.com/Lartrax/ColorPicker/releases/download/v1.1/archive.exe, C:\Program Files\ColorPicker\archive.exe
    Run C:\Program Files\ColorPicker\archive.exe
    GuiControl,, Progress, 40
    GuiControl,, Log, Run C:\Program Files\ColorPicker\archive.exe
    Sleep, 1000
    GuiControl,, Progress, 50
    GuiControl,, Log, Sleep, 1000
    Send, {Enter}
    GuiControl,, Progress, 60
    GuiControl,, Log, Send, {Enter}
    Sleep, 1000
    GuiControl,, Progress, 70
    GuiControl,, Log, Sleep, 1000
    FileDelete, C:\Program Files\ColorPicker\archive.exe
    GuiControl,, Progress, 80
    GuiControl,, Log, FileDelete, C:\Program Files\ColorPicker\archive.exe
    FileCreateShortcut, C:\Program Files\ColorPicker\ColorPicker.exe, %A_AppData%\Microsoft\Windows\Start Menu\Programs\ColorPicker.lnk, , , , C:\Program Files\ColorPicker\ColorPicker.ico, ,
    GuiControl,, Progress, 90
    GuiControl,, Log, FileCreateShortcut, C:\Program Files\ColorPicker\ColorPicker.exe, %A_AppData%\Microsoft\Windows\Start Menu\Programs\ColorPicker.lnk, , , , C:\Program Files\ColorPicker\ColorPicker.ico, ,
    BlockInput, Off
    GuiControl,, Progress, 100
    GuiControl,, Log, BlockInput, Off
    Sleep, 1000
    Gui, Destroy
    ExitApp
}
Else {
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}