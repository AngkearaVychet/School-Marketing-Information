@echo off
chcp 65001 >nul
echo ========================================================
echo   រុញទិន្នន័យទៅកាន់ GitHub (Push to GitHub)
echo   Repository: https://github.com/Angkearavychet/School-Marketing-Information.git
echo ========================================================
echo.

where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] មិនទាន់មានកម្មវិធី Git ក្នុងកុំព្យូទ័រនៅឡើយទេ!
    echo សូមទាញយក និងដំឡើង Git ពី: https://git-scm.com/download/win
    echo.
    pause
    exit /b
)

echo [1/4] កំពុងរៀបចំ Git repository...
if not exist ".git" (
    git init
)

echo [2/4] កំពុងបន្ថែមឯកសារ (git add)...
git add .

echo [3/4] កំពុង Commit...
git commit -m "Initial commit: School Inquiry & Admissions Management System with RBAC"

echo [4/4] កំពុងភ្ជាប់ Remote និង Push ទៅកាន់ GitHub...
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://github.com/Angkearavychet/School-Marketing-Information.git
git push -u origin main

echo.
echo ========================================================
echo   ជោគជ័យ! ទិន្នន័យត្រូវបានរុញទៅកាន់ GitHub រួចរាល់ហើយ។
echo ========================================================
pause
