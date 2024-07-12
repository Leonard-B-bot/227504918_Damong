2echo off setlocal enabledelayexpansion

:menu
cls
echo Select a Windows utility to execute: 
echo:
echo 1. ipconfig
echo 2. tasklist
echo 3. taskkill
echo 4. chkdsk
echo 5. format
echo 6. defrag
echo 7. find
echo 8. attrib
echo 9. Exit
set /p choice = "Enter your choice (1-9): "

if %choice%==1 goto ipconfig
if %choice%==2 goto tasklist
if %choice%==3 goto taskkill
if %choice%==4 goto chkdsk
if %choice%==5 goto format
if %choice%==6 goto defrag 
if %choice%==7 goto find
if %choice%==8 goto attrib
if %choice%==9 goto end
echo Invalid choice, please select again.
pause
goto menu

:ipconfig
ipconfig
pause
goto menu

:tasklist
tasklist
pause
goto menu

:taskkill
set /p pid=" enter program id to kill"
taskkill /PID %pid%
if %errorlevel% neq 0 (
	echo Failed to kill the process.
Please check the PID and try again.
)
pause
goto menu

:chkdsk
set /p drive = "Enter the drive letter to check: "
chkdsk %drive%
pause
goto menu

:format
set /p drive= "Enter the drive letter to format: "
echo WARNING!!!!: This will erase all data on the drive %drive%
set /p confirm = "Are you sure? y/n"
if /i %confirm%==y (
	format %drive%
) else (
	echo Format cancelled.
)
pause
goto menu

:defrag
set /p drive = "Enter the drive letter: "
defrag %drive%
pause
goto menu

:find
set /p text = "Enter the text to find: "
set /p file = "Enter the file to search: "
in: "
find "%text%" %file%
if %errorlevel% neq 0 (
	echo Text not found or an error occured. 
)
pause 
goto menu

:attrib
set /p file = "Enter the file or directoy to change attriutes: "
set /p attributes = "Enter the attributes to set: "
attrib %attributes% %file%
if %errorlevel neq 0 (
	echo Failed to change attributes. 
Please check the inputs and try again.
)
pause
goto menu

:end
echo Exiting script.
pause
