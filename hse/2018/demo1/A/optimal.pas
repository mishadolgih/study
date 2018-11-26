program optimal;

uses
  Math;

var
  a, b, n, m: int64;

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
  //Assign(input, 'tests/00');
  //reset(input);
  readln(n, m, a, b);
  writeln(optimal());
end.
