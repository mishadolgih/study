@echo off
fpc -MObjFPC tests_gen.pas
tests_gen.exe
del tests_gen.exe tests_gen.o
