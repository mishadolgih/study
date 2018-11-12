program simple;

uses
  Math;

var
  a, b, n, m: integer;


  function simple(): integer;
  var
    s, x, y: int64;
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

begin
  //Assign(input, 'tests/07');
  // reset(input);
  readln(n);
  readln(m);
  readln(a);
  readln(b);
  writeln(simple());
end.
