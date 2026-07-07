cls
@ECHO OFF
title Folder NP
if EXIST "HTG Locker" goto UNLOCK
if NOT EXIST NP goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder(Y/N)
set/p "cho="
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren NP "HTG Locker"
attrib +h +s "HTG Locker"
echo Folder locked
goto End
:UNLOCK
echo Enter key to unlock folder
set/p "KEY1="
if NOT %KEY1% == hope  goto FAIL
set/p "KEY2="
if NOT %KEY2% == access  goto FAIL
attrib -h -s "HTG Locker"
ren "HTG Locker"  NP
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md NP
echo created successfully
goto End
:End
