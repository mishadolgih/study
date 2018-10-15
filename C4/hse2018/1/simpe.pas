program simpe;

var
  a, b, n, m, s: integer;

begin
  readln(n);
  readln(m);
  readln(a);
  readln(b);
  s := 0;
  if n < m then
  begin
    s := a * (m - n);
    while (s > (s + b - 4 * a)) and ((s + b - 4 * a) > 0) do
      s := s - (4 * a) + b;
  end;
  writeln(s);
  readln();
end.
