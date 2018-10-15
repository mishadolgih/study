echo off
fpc simple.pas 
for %%i in (*.a) do simple.exe <%%~ni> %%~ni.out
for %%i in (*.a) do fc tests\%%~ni.a tests\%%~ni.out
for %%i in (*.a) do del tests\%%~ni.out
del simple.o simple.exe
pause
