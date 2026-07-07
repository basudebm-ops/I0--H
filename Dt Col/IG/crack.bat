@echo off
set /p file="Show Script : "
rem for /f "delims=" %%a in ('cscript //nologo %file%') do (set vbs_data=%%a)
rem echo Extract Data: %vbs_data%


type %file%
pause >nul
