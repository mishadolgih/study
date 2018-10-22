program tests_gen;

uses
  SysUtils;

const
  VLim = 40;
  Nlim = 50;

var
  ans, t: longint;
  Data: array[1..Nlim] of longint;

  procedure init_data();
  var
    i: longint;
  begin
    for i := 1 to 2 do
      Data[i] := random(VLim);
    for i := 3 to 4 do
      data[i]:= random(Nlim) +1;
  end;

  procedure print_data();
  var
    i: longint;
  begin
    for i := 1 to 4 do
      Write(Data[i], ' ');
    writeln();
  end;

  procedure save_test(t: integer);
  var
    infile, afile: textFile;
    i: integer;
  begin
    AssignFile(infile, 'tests/0' + IntToStr(t));
    rewrite(infile);
    for i := 1 to 4 do
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
