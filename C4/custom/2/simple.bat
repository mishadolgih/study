fpc simple.pas
simple.exe <tests\00> tests\00.out
simple.exe <tests\01> tests\01.out
simple.exe <tests\02> tests\02.out
simple.exe <tests\03> tests\03.out
simple.exe <tests\04> tests\04.out
fc tests\00.a tests\00.out
fc tests\01.a tests\01.out
fc tests\02.a tests\02.out
fc tests\03.a tests\03.out
fc tests\04.a tests\04.out
del simple.exe simple.o tests\0.out tests\01.out tests\02.out tests\03.out tests\04.out