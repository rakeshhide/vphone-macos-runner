@echo off
echo Logging in to GitHub...
gh auth login
if %errorlevel% neq 0 (
    echo GitHub login failed or cancelled.
    pause
    exit /b %errorlevel%
)
echo Creating private GitHub repository...
gh repo create vphone-macos-runner --private --source=. --remote=origin --push
echo Repository created and pushed successfully.
echo You can now trigger workflows under the Actions tab of your repository.
pause
