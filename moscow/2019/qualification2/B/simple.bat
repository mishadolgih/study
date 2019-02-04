@echo off
fpc simple.lpr 
for %%i in (tests\0*.a) do (
simple.exe <tests\%%~ni> tests\%%~ni.out
fc tests\%%~ni.a tests\%%~ni.out
)
del tests\*.out simple.o simple.exe
pause
