@echo off
g++ -std=c++11 %~n0.cpp -o %~n0.exe
set dst=tests

for%%i in(%dst%\*ac) do (
%~n0.exe < %dst%\%%~ni > %dst%\%%~i.out
fc /ac %dst%\%%~i.ac %dst%\%%~i.out
)
del %~n0.exe %dst%\*.out 
pause
