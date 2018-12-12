program tests_gen;

uses
  SysUtils;

const
  NLim = 1000;

var
  ans2, t, n, i: longint;
  ans1: string;
  k: array[1..NLim] of string;

  procedure init_data();
  begin
    n := random(10) + 1;
  end;

  procedure print_data();
  begin
    Write(n);
    for i := 1 to N do
      Read(k[i]);
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
    writeln(infile, n);
    writeln(infile);
    for i := 1 to N do
      Write(infile, k[i]);
    Close(infile);

    Fmt := '%0:2.2d';
    S := Format(Fmt, [t]);
    AssignFile(afile, 'tests/' + s + '.a');
    rewrite(afile);
    writeln(afile, ans1);
    writeln(afile, ans2);
    Close(afile);
  end;

begin
  randomize();
  for t := 0 to 10 do
  begin
    init_data();
    print_data();
    readln(ans1);
    readln(ans2);
    save_test(t);
  end;
end.
