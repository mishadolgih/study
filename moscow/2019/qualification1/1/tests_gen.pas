program tests_gen;

uses
  SysUtils;

var
  ans, t, M, X, Y, W, H: longint;

  procedure init_data();
  begin
    M := random(10) + 1;
    X := random(30) + 1;
    Y := random(20) + 1;
    W := random(10);
    H := random(10);
  end;

  procedure print_data();
  begin
    Writeln(M);
    Writeln(X);
    Writeln(Y);
    Writeln(W);
    Writeln(H);
    writeln();
  end;

  procedure save_test(t: integer);
  var
    infile, afile: textFile;
    s, fmt: string;
  begin

    Fmt := '%0:2.2d';
    S := Format(Fmt, [t]);
    AssignFile(infile, 'tests/' + s);
    rewrite(infile);
    Writeln(infile, M);
    Writeln(infile, X);
    Writeln(infile, Y);
    Writeln(infile, W);
    Writeln(infile, H);
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
  for t := 0 to 6 do
  begin
    init_data();
    print_data();
    readln(ans);
    writeln();
    save_test(t);

  end;
end.
