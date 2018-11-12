program optimal;

uses
  Math;

var
  a, b, n, m: int64;



  function optimal(): int64;
  var
    s, q, z, x, y: int64;
  begin
    z := (m - n) mod 4;
    q := (m - n) div 4;
    if n >= m then
      exit(0);

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
    end;
    exit(s);
  end;

begin
  //Assign(input, 'tests/00');
  //reset(input);
  readln(n);
  readln(m);
  readln(a);
  readln(b);

  writeln(optimal());
end.
