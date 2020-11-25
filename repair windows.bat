set /p id=Enter Windows partition letter: 
sfc /scannow
Dism /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth /Source:WIM:%id%:\sources\Install.wim:1
pause


