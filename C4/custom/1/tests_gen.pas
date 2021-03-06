program tests_gen;

uses
  SysUtils;

const
  NLim = 20;
  VLim = 5;

var
  ans, t, N: longint;
  Data: array[1..Nlim] of longint;

  procedure init_data();
  var
    i: longint;
  begin
    N := 3*t+1;
    for i := 1 to N do
      Data[i] := random(VLim)+1;
  end;

  procedure save_test(t: integer);
  var
    infile, afile: text;
    i: integer;
  begin
    Assign(infile, 'tests/1' + IntToStr(t));
    rewrite(infile);
    writeln(infile, N, t);
    for i := 1 to N do
      write(infile, Data[i], ' ');
    Close(infile);

    Assign(afile, 'tests/1' + IntToStr(t) + '.a');
    rewrite(afile);
    writeln(afile, ans);
    Close(afile);
  end;

begin
  randomize();
  for t := 5 to 9 do
  begin
    if t mod 2 =1 then
       init_data();
       readln(ans);
       save_test(t);
  end;
end.
