program simple;

var
  a, b, n, m, s, x, y: integer;
begin
  //Assign(input, 'tests/07');
 // reset(input);
  readln(n);
  readln(m);
  readln(a);
  readln(b);
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
  writeln(s);
  readln();
end.
