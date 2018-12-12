program tests_gen;

uses
  SysUtils;

const
  NLim = 8;

type
  Time = record
    h, m, s: byte;
  end;

var
  ans, i, t, N: longint;
  Data: array[1..NLim] of time;
  infile, afile: textFile;
  fname: string;


begin
  randomize();
  for t := 0 to 9 do
  begin
    N := NLim - random(NLim div 2);
    for i := 1 to N do
    begin
      Data[i].h := random(24);
      Data[i].m := random(60);
      Data[i].s := random(60);
    end;
    for i := 1 to N do
      Writeln(format('%.2d:%.2d:%.2d', [Data[i].h, Data[i].m, Data[i].s]));
    readln(ans);
    writeln();

    fname := format('tests/%.2d', [t]);
    AssignFile(infile, fname);
    Assignfile(afile, fname + '.a');

    rewrite(infile);
    rewrite(afile);

    writeln(infile, N);
    for i := 1 to N do
      Writeln(infile, format('%.2d:%.2d:%.2d', [Data[i].h, Data[i].m, Data[i].s]));
    writeln(afile, ans);

    Close(infile);
    Close(afile);
  end;
end.
