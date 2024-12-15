:: Batch script to git changes automatically
@echo off

:: Remove the History folder, as this can get rather large
rd /s /q ".\History"

:: Perform a standard git transaction, prompting user for commit message
git add .
set /p commit_msg=Please enter a commit message: 
git commit -m "%commit_msg%"
git push -u origin main