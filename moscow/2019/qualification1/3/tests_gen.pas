program tests_gen;

uses
  SysUtils;


var
  ans, t, z, b: byte;
  Data: array[1..20] of byte;

  procedure init_data();
  var
    i: longint;
  begin
    z := 1;
    b := random(5);
    for i := 1 to b do
        z := z * 2;
    for i := 1 to (z - 1) do
      data[i]:= random(2) +1;
  end;

  procedure print_data();
  var
    i: longint;
  begin
    writeln(z);
    for i := 1 to (z - 1) do
      Writeln(Data[i]);
  end;

  procedure save_test(t: integer);
  var
    infile, afile: textFile;
    i: integer;
    var s, fmt:string;
  begin

    Fmt:='%0:2.2d' ;S:=Format (Fmt,[t]);
    AssignFile(infile, 'tests/' + s);
    rewrite(infile);
    writeln(infile, z);
    for i := 1 to (z - 1) do
      writeln(infile, Data[i]);
    Close(infile);

    Fmt:='%0:2.2d' ;S:=Format (Fmt,[t]);
    AssignFile(afile, 'tests/' + s+ '.a');
    rewrite(afile);
    writeln(afile, ans);
    Close(afile);
  end;






begin
  randomize();
  for t := 0 to 5 do
  begin
    init_data();
    print_data();
    readln(ans);
    writeln();
    save_test(t);
    readln();
  end;
end.
