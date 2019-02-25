program simple;

uses
  Math,
  SysUtils,
  strutils;

var
  i: integer;
  s, a, b, c: shortstring;
  f: boolean;

  procedure extra(s: shortstring);
  begin
    a := extractword(1, s, [#9]);
    b := extractword(2, s, [#9]);
    c := extractword(3, s, [#9]);
  end;

  function minint(s: shortstring): shortstring;
  var
    a1, b1, c1: int64;
    x: shortstring;
  begin
    a1 := strtoint64(extractword(1, s, [#9]));
    b1 := strtoint64(extractword(2, s, [#9]));
    c1 := strtoint64(extractword(3, s, [#9]));
    if (a1 < b1) and (a1 < c1) then
      x := a
    else
    if b1 < c1 then
      x := b
    else
      x := c;
    exit(x);
  end;

  function minfloat(s: shortstring): shortstring;
  var
    i, n: byte;
    a1, b1, c1: float;
    x: shortstring;
  begin
    n := length(s);
    for i := 1 to n do
      if s[i] = '.' then
        s[i] := ',';
    a1 := strtofloat(extractword(1, s, [#9]));
    b1 := strtofloat(extractword(2, s, [#9]));
    c1 := strtofloat(extractword(3, s, [#9]));
    if (a1 < b1) and (a1 < c1) then
      x := a
    else
    if b1 < c1 then
      x := b
    else
      x := c;
    exit(x);
  end;

  function min(s: shortstring): shortstring;
  var
    x: shortstring;
  begin
    if (a < b) and (a < c) then
      x := a
    else
    if b < c then
      x := b
    else
      x := c;
    exit(x);
  end;

begin
 // Assign(input, 'tests/01');
  // Assign(output, 'tests/00.a');
  //reset(input);
  //rewrite(output);

  while not EOF(input) do
  begin
    readln(s);
    f := False;
    for i := 1 to length(s) do
      if s[i] > #64 then
        f := True;
    extra(s);
    if pos('.', s) > 0 then
      writeln(minfloat(s))
    else
    if f = True then
      writeln(min(s))
    else
      writeln(minint(s));
  end;
  Close(input);
end.
