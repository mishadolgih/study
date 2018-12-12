@echo off
fpc B.pas
for %%i in (tests\*.a) do (
B.exe <tests\%%~ni> tests\%%~ni.out
fc tests\%%~ni.a tests\%%~ni.out
)
 del tests\*.out B.o B.exe
pause
