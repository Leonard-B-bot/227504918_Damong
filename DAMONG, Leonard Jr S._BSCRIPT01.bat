@echo
rem 5 websites
start "" "https://www.indeed.com/career-advice/career-development/how-to-run-file-in-command-prompt"
start "" "https://stackoverflow.com/questions/9392874/bat-file-open-new-cmd-window-and-execute-a-command-in-there#:~:text=start%20cmd%20%2Fk%20echo%20Hello,C%20switch%20for%20something%20similar.&text=This%20will%20then%20execute%20"pause,when%20the%20command%20is%20done."
start "" "https://leonardreyes.notion.site/Batch-File-Projects-5eb9f5527b2442fb821bd548c00cb86d"
start "" "https://leonardreyes.notion.site/Batch-File-54359cf08c614779b378deabd075104c"
start "" "https://www.facebook.com"

rem calculator
start calc.exe

rem notepad
start notepad.exe

rem system shutdown (timer)
timeout /t 60

rem system shutdown (turnoff)
shutdown /s /f /t 0