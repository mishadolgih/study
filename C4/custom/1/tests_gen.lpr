program tests_gen;

uses
  SysUtils;

const
  NLim = 30;
  VLim = 10;

var
  ans, t, N: longint;
  Data: array[1..Nlim] of longint;

  procedure init_data();
  var
    i: longint;
  begin
    N := random(NLim) + 1;
    for i := 1 to N do
      Data[i] := random(VLim);
  end;

  procedure print_data();
  var
    i: longint;
  begin
    for i := 1 to N do
      Write(Data[i], ' ');
    writeln();
  end;

  procedure save_test(t: integer);
  var
    infile, afile, : textFile;
    i: integer;
  begin
    AssignFile(infile, 'tests/0' + IntToStr(t));
    rewrite(infile);
    writeln(infile, N);
    for i := 1 to N do
      writeln(infile, Data[i]);
    Close(infile);

    AssignFile(afile, 'tests/0' + IntToStr(t) + '.a');
    rewrite(afile);
    writeln(afile, ans);
    Close(afile);
  end;

begin
  randomize();
  for t := 0 to 4 do
  begin
    init_data();
    print_data();
    readln(ans);
    save_test(t);
  end;
end.
