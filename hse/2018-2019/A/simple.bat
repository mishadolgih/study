@echo off
fpc simple.pas 
for %%i in (tests\0*.a) do (
simple.exe <tests\%%~ni> tests\%%~ni.out
fc /A tests\%%~ni.a tests\%%~ni.out
)
del tests\*.out simple.o simple.exe
pause
