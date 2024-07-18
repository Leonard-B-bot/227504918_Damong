@echo off
setlocal enabledelayedexpansion

rem Define the source and archive directories
set src_dir=C:\*.txt
set archive_dir=Z:\Archived_Files

rem Create the archive directory if it doesn't exist
if not exist "%archive_dir%" (
    mkdir "%archive_dir%"
)

rem Sort text files by date and move older files to the archive directory
echo Archiving older files...
forfiles /p "C:\" /m *.txt /d -30 /c "cmd /c move @file %archive_dir%"

rem Sort archived files by size and list them
echo Sorting archived files by size...
dir "%archive_dir%\*.txt" /s /o-s /b > "%archive_dir%\sorted_files_by_size.txt"

rem Display the sorted list and prompt the user for deletion
type "%archive_dir%\sorted_files_by_size.txt"
echo.
set /p confirm="Do you want to delete the old, large files listed above? (yes/no): "

if /i %confirm%==yes (
    for /f "delims=" %%f in (%archive_dir%\sorted_files_by_size.txt) do (
        del "%%f"
        echo Deleted: %%f
    )
    echo All specified files have been deleted.
) else (
    echo Deletion cancelled.
)

pause
