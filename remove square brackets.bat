@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%D in ('dir /b /ad') do (
    set "foldername=%%D"
    set "newfoldername=!foldername:[=!"
    set "newfoldername=!newfoldername:]=!"
    if not "!foldername!"=="!newfoldername!" (
        ren "%%D" "!newfoldername!"
    )
)

endlocal