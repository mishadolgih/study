@echo off
g++ -std=c++11 %~n0.cpp -o %~n0.exe

for %%i in (0, 1, 2) do (%~n0.exe 10 5 5 > tests\1%%i)
for %%i in (0, 1, 2) do (%~n0.exe 13 7 100 > tests\2%%i)
for %%i in (0, 1, 2) do (%~n0.exe 16 9 0 > tests\3%%i)

del test_gen.exe