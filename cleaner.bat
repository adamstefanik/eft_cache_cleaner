@echo off
title Windows Cleanup Script
echo Cleaning up temporary files and cache...

:: 1. Cistenie %temp% priecinka (User temporary files)
echo.
echo Deleting user temporary files...
DEL /F /S /Q "%TEMP%\*.*"
RD /S /Q "%TEMP%"
MD "%TEMP%"
echo User temporary files cleaned.

:: 2. Cistenie Prefetch priecinka
echo.
echo Deleting Prefetch files...
DEL /F /S /Q "C:\Windows\Prefetch\*.*"
echo Prefetch files cleaned.

:: 3. Cistenie Windows Store Cache
echo.
echo Clearing Windows Store cache...
WSReset.exe -cleanup
echo Windows Store cache cleanup initiated.

echo.
echo Cleanup complete!
echo Press any key to exit...
pause > nul