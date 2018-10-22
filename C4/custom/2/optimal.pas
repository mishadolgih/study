program optimal;

var
  i, max, max7, max2, max_even, max_even2, R, a, N: integer;
begin
  max := 0;
  max2 := 0;
  max7 := 0;
  max_even := 0;
  max_even2 := 0;
  R := 0;
  readln(N);
  i := 0;
  while i < N do
  begin
    readln(a);
    if (a mod 7 = 0) and (a > max7) then
      max7 := a;
    if (a > max) then
    begin
      max2 := max;
      max := a;
    end;
    if (a mod 2 = 0) and (a > max_even) then
    begin
      max_even2 := max_even;
      max_even := a;
    end;
    i := i + 1;
  end;
  if max7 mod 2 = 0 then
    if max <> max7 then
      R := max7 * max
    else
      R := max7 * max2
  else
  if max7 <> max_even then
    R := max7 * max_even
  else
    R := max7 * max_even2;
  writeln(R);
  readln();
end.
