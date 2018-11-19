program tests_gen;

uses
  SysUtils;

const
  NLim = 8;


var
  ans, t, N: longint;
  HH: array[0..23] of integer;
  MM: array[0..59] of integer;
  SS: array[0..59] of integer;
  s1, s2, s3: string;


  procedure init_data();
  var
    i: integer;
  begin
    for i := 1 to N do
    begin
      HH[i] := random(24);
      MM[i] := random(60);
      SS[i] := random(60);
    end;
  end;

  procedure print_data();
  var
    i: longint;
    fmt: string;

  begin
    for i := 1 to N do
    begin
    Fmt := '%0:2.2d';    S1 := Format(Fmt, [HH[i]]);
    Fmt := '%0:2.2d';    S2 := Format(Fmt, [MM[i]]);
    Fmt := '%0:2.2d';    S3 := Format(Fmt, [SS[i]]);
      Writeln(s1 + ':' + s2 + ':' + s3);
      end;
  end;

  procedure save_test(t: integer);
  var
    infile, afile: textFile;
    i: integer;
  var
    s, fmt: string;
  begin

    Fmt := '%0:2.2d';    S := Format(Fmt, [t]);
    AssignFile(infile, 'tests/' + s);
    rewrite(infile);
    writeln(infile, IntToStr(N));
    for i := 1 to N do
      writeln(infile, s1 + ':' + s2 + ':' + s3);
    Close(infile);

    Fmt := '%0:2.2d';    S := Format(Fmt, [t]);
    AssignFile(afile, 'tests/' + s + '.a');
    rewrite(afile);
    writeln(afile, ans);
    Close(afile);
  end;




begin
  randomize();
  for t := 0 to 9 do
  begin
    N := NLim - random(NLim div 2);
    init_data();
    print_data();
    readln(ans);
    save_test(t);
    writeln();
  end;
end.
