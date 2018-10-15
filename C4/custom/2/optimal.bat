echo off
fpc optimal.pas
for %%i in (*.a) do optimal.exe <%%~ni> %%~ni.out
for %%i in (*.a) do fc tests\%%~ni.a tests\%%~ni.out
for %%i in (*.a) do del tests\%%~ni.out
del optimal.o optimal.exe
pause
