@echo off
REM USLang Standalone Installer v1.0
REM This script installs USLang to your system automatically

setlocal enabledelayedexpansion

REM Colors and formatting
for /F %%A in ('copy /Z "%~f0" nul') do set "BS=%%A"

echo.
echo ================================================================================
echo                          USLang Installation Wizard
echo ================================================================================
echo.

REM Get the directory where this script is running from
set "SCRIPT_DIR=%~dp0"
set "INSTALL_DIR=%USERPROFILE%\USLang"
set "US_EXE=%SCRIPT_DIR%us.exe"
set "US_ICON=%SCRIPT_DIR%us.ico"

echo [*] Installation Directory: %INSTALL_DIR%
echo.

REM Search for us.exe if it is not directly in this folder
if not exist "%US_EXE%" (
    for /r "%SCRIPT_DIR%" %%I in (us.exe) do if not defined US_EXE_FOUND (
        set "US_EXE=%%I"
        set "US_EXE_FOUND=1"
    )
)

REM Search for us.ico if it is not directly in this folder
if not exist "%US_ICON%" (
    for /r "%SCRIPT_DIR%" %%I in (us.ico) do if not defined US_ICON_FOUND (
        set "US_ICON=%%I"
        set "US_ICON_FOUND=1"
    )
)

if not exist "%US_EXE%" (
    echo [ERROR] us.exe not found in %SCRIPT_DIR%
    echo [ERROR] Please place this installer in the same folder as us.exe or extract the package root and run again.
    pause
    exit /b 1
)

echo [*] Found USLang executable at %US_EXE%

echo [+] Creating %INSTALL_DIR% if needed...
if not exist "%INSTALL_DIR%" (
    mkdir "%INSTALL_DIR%"
)

REM Copy executable
echo [+] Copying USLang executable...
copy "%US_EXE%" "%INSTALL_DIR%\us.exe" >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Failed to copy us.exe
    pause
    exit /b 1
)

REM Copy examples if they exist
if exist "%SCRIPT_DIR%examples" (
    echo [+] Copying examples...
    xcopy "%SCRIPT_DIR%examples" "%INSTALL_DIR%\examples" /E /I /Y >nul 2>&1
)

REM Copy documentation files if they exist
for %%F in (README.md GUIDE.md LANGUAGE_SPEC.md QUICK_REFERENCE.md BUILD.md PROJECT_SUMMARY.md INDEX.md BUILD_SUCCESS.md grammar.dot.pxt) do (
    if exist "%SCRIPT_DIR%%%F" (
        echo [+] Copying %%F...
        copy "%SCRIPT_DIR%%%F" "%INSTALL_DIR%\%%F" >nul 2>&1
    )
)

REM Copy icon if found
if exist "%US_ICON%" (
    echo [+] Copying us.ico...
    copy "%US_ICON%" "%INSTALL_DIR%\us.ico" >nul 2>&1
)

REM Register .us file association and icon for current user
if exist "%INSTALL_DIR%\us.exe" (
    echo.
    echo [*] Registering USLang .us file association...
    reg add "HKCU\Software\Classes\.us" /ve /d "USLangScript" /f >nul 2>&1
    reg add "HKCU\Software\Classes\USLangScript" /ve /d "USLang Script File" /f >nul 2>&1
    reg add "HKCU\Software\Classes\USLangScript\DefaultIcon" /ve /d "\"%INSTALL_DIR%\us.ico\",0" /f >nul 2>&1
    reg add "HKCU\Software\Classes\USLangScript\shell\open\command" /ve /d "\"%INSTALL_DIR%\us.exe\" \"%1\" %%*" /f >nul 2>&1
)

REM Add to system PATH using PowerShell (requires elevation for System PATH)
echo.
echo [*] Adding USLang to system PATH...

REM Try to add to system PATH (requires admin)
powershell -Command "try { [Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';%INSTALL_DIR%', 'Machine'); Write-Output 'Success' } catch { Exit 1 }" >nul 2>&1

if errorlevel 1 (
    echo [!] Could not add to system PATH (requires administrator)
    echo [+] Adding to user PATH instead...
    powershell -Command "[Environment]::SetEnvironmentVariable('Path', [Environment]::GetEnvironmentVariable('Path', 'User') + ';%INSTALL_DIR%', 'User')"
)

REM Broadcast environment change
powershell -Command "& {$mem = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(10000); [System.Runtime.InteropServices.Marshal]::WriteInt32($mem, 1); [Windows.Win32.Core.PInvokeCore]::SendMessageTimeout([IntPtr]0xffff, 0x001a, 0, $mem, 2, 5000, 0) | Out-Null}" >nul 2>&1

echo [+] USLang installed successfully!
echo [*] Explorer may need to be restarted for the new .us icon to appear.
echo.
echo ================================================================================
echo                        Installation Complete
echo ================================================================================
echo.
echo Location: %INSTALL_DIR%
echo.
echo You can now use USLang from anywhere by typing:
echo   us "path\to\program.us"
echo.
echo Examples:
echo   us "%INSTALL_DIR%\examples\hello.us"
echo   us
echo.
echo NOTE: Please restart PowerShell or Command Prompt for changes to take effect.
echo.
echo ================================================================================
echo.
pause
exit /b 0
