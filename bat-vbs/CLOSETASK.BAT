@ECHO OFF

set EXE = mspaint.exe

taskkill /f /im mspaint.exe

echo we killed it, or should have....
PAUSE