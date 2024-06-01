@echo off
setlocal enabledelayedexpansion

rem Step 1: Rename files to temporary unique names
set count=1
for %%f in (*.jpg *.jpeg *.png *.gif) do (
    ren "%%f" "tempfile_!count!%%~xf"
    set /a count+=1
)

rem Step 2: Rename files to final names with incrementing numbers
set count=1
for %%f in (tempfile_*.jpg tempfile_*.jpeg tempfile_*.png tempfile_*.gif) do (
    ren "%%f" "!count!%%~xf"
    set /a count+=1
)

endlocal
