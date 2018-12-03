program tests_gen;

uses
  SysUtils;

var
  ans, t, n, k, x: longint;

  procedure init_data();
  begin
    n := random(10) + 2;
    k := random(n-1) + 1;
    x := random(10) + 1;
  end;

  procedure print_data();
  begin
    Write(n, ' ', k, ' ', x);
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
    writeln(infile, k);
    writeln(infile, x);
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
  for t := 0 to 10 do
  begin
    init_data();
    print_data();
    readln(ans);
    save_test(t);

  end;
end.
