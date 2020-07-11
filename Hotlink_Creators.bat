@echo off
set /p Source= "Enter Source Directory Path :"
set /p Target= "Enter Target Directory Path :"
IF EXIST %Target% (
 echo Processing..
) ELSE (
mkdir %Target%
)
xcopy %Source% %Target%\ /E/H/Y
rmdir %Source% /Q/S
mklink /j %Source% %Target%
set /p DUMMY=Hit ENTER to continue...



