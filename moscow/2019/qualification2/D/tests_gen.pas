program tests_gen;

uses
  SysUtils;

const
  NLim = 35;
  VLim = 5;

var
  ans, t, N, K: longint;
  Data: array[1..Nlim] of longint;

  procedure init_data();
  var
    i: longint;
  begin
    N := 3*t;
    K := t;
    for i := 1 to N do
      Data[i] := random(VLim)+1;
  end;

procedure print_data();
  var
    i: longint;
  begin
    write(N, ' ', K);
    writeln();
    for i := 1 to N do
      Write(Data[i], ' ');
    writeln();
  end;


  procedure save_test(t: integer);
  var
    infile, afile: text;
    i: integer;
  begin
    Assign(infile, 'tests/1' + IntToStr(t));
    rewrite(infile);
    writeln(infile, N, ' ', K);
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
  for t := 3 to 7 do
  begin
    if t mod 2 =1 then
      begin
       init_data();
       print_data();
       readln(ans);
       save_test(t);
      end;
  end;
end.
