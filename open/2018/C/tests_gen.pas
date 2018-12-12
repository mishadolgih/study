program tests_gen;

uses
  SysUtils;

const
  NLim = 100;

var
  ans, i, t, n, p, k: longint;
  A: array[1..NLim] of integer;

  procedure init_data();
  begin
    n := random(10) + 2;
    p := random(10) + 1;
    k := random(10) + 1;
    for i := 1 to N do
      A[i] := random(10);
  end;

  procedure print_data();
  begin
    Write(n, ' ', p, ' ', K);
    writeln();
    for i := 1 to N do
      Write(A[i], ' ');
    writeln();
  end;

  procedure save_test(t: integer);
  var
    infile, afile: textFile;
  var
    s, fmt: string;
  begin

    Fmt := '%0:2.2d';
    S := Format(Fmt, [t]);
    AssignFile(infile, 'tests/' + s);
    rewrite(infile);
    writeln(infile, n, ' ', p, ' ', k);
    for i := 1 to N do
      Write(infile, A[i], ' ');
    //writeln(infile, p);
    //writeln(infile, k);
    Close(infile);

    Fmt := '%0:2.2d';
    S := Format(Fmt, [t]);
    AssignFile(afile, 'tests/' + s + '.a');
    rewrite(afile);
    writeln(afile, ans);
    Close(afile);
  end;

begin
  randomize();
  for t := 0 to 7 do
  begin
    init_data();
    print_data();
    readln(ans);
    save_test(t);

  end;
end.
