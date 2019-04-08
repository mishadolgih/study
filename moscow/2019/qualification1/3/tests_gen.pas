program tests_gen;

uses
  SysUtils;


var
  ans, t: longint;
  Data: array[1..4] of longint;

  procedure init_data();
  var
    i: longint;
  begin
    for i := 1 to 4 do
      data[i]:= random(2) +1;
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
    var s, fmt:string;
  begin

    Fmt:='%0:2.2d' ;S:=Format (Fmt,[t]);
    AssignFile(infile, 'tests/' + s);
    rewrite(infile);
    for i := 1 to 4 do
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
    save_test(t);

  end;
end.
