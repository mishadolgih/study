@echo off
g++ -std=c++11 %~n0.cpp -o %~n0.exe

for %%i in (0, 1, 2) do (%~n0.exe 4  %%i > tests\1%%i)
for %%i in (0, 1, 2) do (%~n0.exe 5  %%i > tests\2%%i)
for %%i in (0, 1, 2) do (%~n0.exe 6  %%i > tests\3%%i)

del test_gen.exe