program test;

uses
  Math;

const
  VLim = 30;

var
  a, b, n, m, t: int64;

  function simple(): int64;
  var
    s, x, y: int64;
  begin
    if (n < m) then
    begin
      x := m - n;
      y := 0;
      s := a * x + b * y;
      while x > 3 do
      begin
        x := x - 4;
        y := y + 1;
        if (a * x + b * y) < s then
          s := a * x + b * y;
      end;
      y := y + 1;
      if y * b < s then
        s := y * b;
    end
    else
      s := 0;
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
  randomize();
  for t := 1 to 500 do
  begin
    n := VLim - random(VLim div 2);
    m := VLim - random(VLim div 2);
    a := VLim - random(VLim div 2);
    b := VLim - random(VLim div 2);
    if simple() <> optimal() then
      writeln('error!');

  end;
  writeln('done');
end.
