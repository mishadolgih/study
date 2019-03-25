@echo off
g++ -std=c++11 %~n0.cpp -o %~n0.exe
set dst=tests

for%%i in(%dst%\*a) do (
%~n0.exe < %dst%\%%~i > %dst%\%%~i.out
fc /a %dst%\%%~i.a %dst%\%%~i.out
)
del %~n0.exe %dst%\*.out 
pause
