@echo off
fpc optimal.pas
for %%i in (tests\*.a) do (
optimal.exe <tests\%%~ni> tests\%%~ni.out
fc tests\%%~ni.a tests\%%~ni.out
)
 del tests\*.out optimal.o optimal.exe
pause
