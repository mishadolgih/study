@echo off
g++ -std=c++11 %~n0.cpp -o %~n0.exe

for %%i in (tests\*.a) do (
%~n0.exe < tests\%%~ni > tests\%%~ni.out
fc tests\%%~ni.out tests\%%~ni.a
)
del %~n0.exe tests\*.out
pause 

