fpc optimal.pas 
optimal.exe < tests\00> tests\00.out
optimal.exe < tests\01> tests\01.out
optimal.exe < tests\02> tests\02.out
optimal.exe < tests\03> tests\03.out
optimal.exe < tests\04> tests\04.out
optimal.exe < tests\05> tests\05.out
fc tests\00.a tests\00.out
fc tests\01.a tests\01.out
fc tests\02.a tests\02.out
fc tests\03.a tests\03.out
fc tests\04.a tests\04.out
fc tests\05.a tests\05.out
del tests\00.out tests\01.out tests\02.out tests\03.out tests\04.out tests\05.out optimal.o optimal.exe
