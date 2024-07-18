@echo off
echo Please choose option:
echo 1. Open photos
echo 2. Open School
echo 3. Open Nexus
echo 4. Open Chatgpt
echo 5. Open Notion
set /p choice=Enter you choice (1-5):

if %choice% ==1(
    start https://www.icloud.com/
	start https://www.google.com/photos/about/
) else if %choice%==2 (
    start https://uc-bcf.instructure.com/
	start https://mystudentportal.uc-bcf.edu.ph/PARENTS_STUDENTS/parents_student_index.htm
) else if %choice%==3 (
    start https://www.nexusmods.com/monsterhunterrise
	explorer "C:\Program Files (x86)\Steam\steamapps\common\MonsterHunterRise"
) else if %choice%==4 (
    start https://chatgpt.com/?oai-dm=1
) else if %choice%==5 (
    start https://leonardreyes.notion.site
) else (
    echo Invalid choice. Please run the batch file again.
)

pause 