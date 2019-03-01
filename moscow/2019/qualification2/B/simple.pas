program simple;

uses
  Math,
  SysUtils,
  strutils;

var
  i: integer;
  s, a, b, c: shortstring;
  LetterFound, dotFound: boolean;

  function min(l, r: shortstring): shortstring;
  begin
    exit(ifthen(l < r, l, r));
  end;

  function minint(l, r: shortstring): shortstring;
  var
    x, y: int64;
  begin
    x := strtoint64(l);
    y := strtoint64(r);
    exit(ifthen(x < y, l, r));
  end;

  function minfloat(l, r: shortstring): shortstring;
  var
    x, y: float;
    fs: TFormatSettings;
  begin
    fs := DefaultFormatSettings;
    fs.DecimalSeparator := '.';
    x := strTofloat(l, fs);
    y := strTofloat(r, fs);
    exit(ifthen(x < y, l, r));
  end;

begin
  // Assign(input, 'tests/01');
  //reset(input);

  while not EOF(input) do
  begin
    readln(s);
    a := extractword(1, s, [#9]);
    b := extractword(2, s, [#9]);
    c := extractword(3, s, [#9]);

    LetterFound := False;
    for i := 1 to length(s) do
      if s[i] > #64 then
        LetterFound := True;
    dotFound := pos('.', s) > 0;

    if dotFound then
      writeln(minfloat(minfloat(a, b), c))
    else
    if LetterFound then
      writeln(min(min(a, b), c))
    else
      writeln(minint(minint(a, b), c));
  end;
end.
