#Requires AutoHotkey v2.0
; Set single instance to prevent multiple scripts running
#SingleInstance force

; DO NOT GO UNDER 50ms INTERVAL or it will lag your pc down and it cannot detect if the key has been released
interval := 70

XButton2::
{
    Loop
        {
            Click   ; left click
            Sleep interval
            if !GetKeyState("XButton2", "P")  ; The key has been released, so break out of the loop.
                break
        }
}

XButton1::
{
    Loop
        {
            MouseClick "right"
            Sleep interval
            if !GetKeyState("XButton1", "P")  ; The key has been released, so break out of the loop.
                break
        }
}
