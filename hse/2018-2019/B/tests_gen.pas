program tests_gen;

uses
  SysUtils;

const
  NLim = 10;

var
  ans, i, t, N: longint;
  Data: array[1..NLim] of longint;
  infile, afile: textFile;
  fname: string;

begin
  randomize();
  for t := 0 to 9 do
  begin
    N := NLim - random(NLim div 2);
    for i := 1 to N do
      Data[i] := random(10)+1;

    writeln(N);
    for i := 1 to N do
      Write(Data[i], ' ');
    writeln();
    readln(ans);
    writeln();

    fname := format('tests/%.2d', [t]);
    AssignFile(infile, fname);
    Assignfile(afile, fname + '.a');

    rewrite(infile);
    rewrite(afile);

    writeln(infile, N);
    for i := 1 to N do
      Write(infile, Data[i], ' ');
    writeln(afile, ans);

    Close(infile);
    Close(afile);
  end;
end.
