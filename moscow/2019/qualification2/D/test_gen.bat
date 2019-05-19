@echo off
g++ test_gen.cpp
for %%i in (%dst%\*.a) do (
%~n0.exe < %dst%\%%~ni > %dst%\%%~ni.out

del tests_gen.o tests_gen.exe