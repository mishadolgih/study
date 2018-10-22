@echo off
fpc simple.pas 
for %%i in (tests\*.a) do (
simple.exe <tests\%%~ni> tests\%%~ni.out
fc tests\%%~ni.a tests\%%~ni.out
)
del tests\%%~ni.out simple.o simple.exe
pause
