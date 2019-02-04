@echo off
fpc optimal.lpr
for %%i in (tests\*) do (
optimal.exe < tests\%%~ni > tests\%%~ni.out
fc tests\%%~ni.a tests\%%~ni.out
)
del tests\*.out optimal.o optimal.exe
pause
