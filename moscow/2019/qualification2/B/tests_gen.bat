@echo off
fpc -MObjFPC tests_gen.pas
tests_gen.exe
del tests_gen.o tests_gen.exe