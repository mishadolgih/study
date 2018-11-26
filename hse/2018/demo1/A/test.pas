program test;

uses
  Math;

const
  VLim = 30;

var
  a, b, n, m: integer;

  function simple(): integer;
  var
    s, x, y: integer;
  begin
    if (n >= m) then
      exit(0);

    x := m - n;
    y := 0;
    s := a * x + b * y;
    while x > 0 do
    begin
      x := max(x - 4, 0);
      y := y + 1;
      s := min(a * x + b * y, s);
    end;
    exit(s);
  end;

  function optimal(): int64;
  var
    q, r, x, y: int64;
  begin
    if n >= m then
      exit(0);

    if 4 * a < b then
      exit(a * (m - n));

    r := (m - n) mod 4;
    q := (m - n) div 4;
    x := ifthen(r * a > b, 0, r);
    y := ifthen(r * a > b, q + 1, q);
    exit(x * a + y * b);
  end;

begin
  for n := 1 to VLim do
    for m := 1 to VLim do
      for a := 1 to VLim do
        for b := 1 to VLim do
          if simple() <> optimal() then
            writeln('error!');
  writeln('done');
end.
