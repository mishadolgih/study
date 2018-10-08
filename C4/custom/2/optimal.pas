program optimal;

var
  i, max, max7, max_even, R, a, N: integer;
begin
  max := 0;
  max7 := 0;
  max_even := 0;
  R := 0;
  readln(N);
  i := 0;
  while i < N do
  begin
    readln(a);
    if (a mod 7 = 0) and (a > max7) then
      max7 := a;
    if (a > max) and (a mod 7 <> 0) then
      max := a;
    if (a mod 2 = 0) and (a > max_even) and (a mod 7 <> 0) then
      max_even := a;
    i := i + 1;
  end;
  if max7 mod 2 = 0 then
    R := max7 * max
  else
    R := max7 * max_even;
  writeln(R);
  readln();
end.
