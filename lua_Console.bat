chcp 65001
@echo off
setlocal enabledelayedexpansion
set index=1
:while
call set "temp=%%%index%%"
if defined temp (
set "directory!index!=!temp!"
echo !directory%index%!
set "temp="
set /a index+=1
goto while
) else (
set /a index-=1
call set "temp=%%!index!%"
set "script_path=!temp!"
echo !script_path!
set "directory!index!="
set "temp="
)
cmd
pause