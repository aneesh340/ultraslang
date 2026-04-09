@echo off
echo Installing USLang...
if not exist "%USERPROFILE%\USLang" mkdir "%USERPROFILE%\USLang"
copy "target\x86_64-pc-windows-gnu\release\us.exe" "%USERPROFILE%\USLang\" >nul
xcopy "examples" "%USERPROFILE%\USLang\examples\" /E /I /Y >nul
copy "README.md" "%USERPROFILE%\USLang\" >nul
copy "GUIDE.md" "%USERPROFILE%\USLang\" >nul
copy "LANGUAGE_SPEC.md" "%USERPROFILE%\USLang\" >nul
copy "QUICK_REFERENCE.md" "%USERPROFILE%\USLang\" >nul
copy "BUILD.md" "%USERPROFILE%\USLang\" >nul
copy "PROJECT_SUMMARY.md" "%USERPROFILE%\USLang\" >nul
copy "INDEX.md" "%USERPROFILE%\USLang\" >nul
copy "BUILD_SUCCESS.md" "%USERPROFILE%\USLang\" >nul
copy "grammar.dot.pxt" "%USERPROFILE%\USLang\" >nul
setx PATH "%PATH%;%USERPROFILE%\USLang" /M
echo USLang installed to %USERPROFILE%\USLang
echo Added to system PATH - you can now use 'us' from any directory in any session.
echo.
echo Installation complete!
pause