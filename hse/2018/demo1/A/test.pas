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
    s, q, z, x, y: int64;
  begin
    z := (m - n) mod 4;
    q := (m - n) div 4;
    if n < m then
      if 4 * a < b then
        s := a * (m - n)
      else
      if b < a then
        s := ifthen((m - n) mod 4 = 0, b * q, b * q + b)
      else
      begin
        x := ifthen(z * a > b, 0, z);
        y := ifthen(z * a > b, q + 1, q);
        s := x * a + y * b;
      end
    else
      s := 0;
    exit(s);
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
