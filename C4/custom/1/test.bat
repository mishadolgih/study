@echo off
fpc test.pas
test.exe 
del test.exe test.o 
pause                                                          