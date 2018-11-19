program test;

uses
  Math;

const
  VLim = 30;

var
  a, b, n, m, t, i, j, k: integer;

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
    r := (m - n) mod 4;
    q := (m - n) div 4;
    if n >= m then
      exit(0);

    if 4 * a < b then
      exit(a * (m - n));

    x := ifthen(r * a > b, 0, r);
    y := ifthen(r * a > b, q + 1, q);
    exit(x * a + y * b);
  end;

begin
  for i := 1 to VLim do
  begin
    n := i;
    for j := 1 to VLim do
    begin
      m := j;
      for k := 1 to VLim do
      begin
        a := k;
        for t := 1 to VLim do
        begin
          b := t;
          if simple() <> optimal() then
            writeln('error!');
        end;
      end;
    end;
  end;

  writeln('done');
end.
