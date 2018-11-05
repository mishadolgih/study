program optimal;

var
  a, N: integer;

  function optimal(): integer;
  var
    i, max, max7, max14, max_even, R: integer;
  begin
    max := 0;
    max7 := 0;
    max14 := 0;
    max_even := 0;
    R := 0;
    i := 0;
    while i < N do
    begin
      readln(a);
      if (a mod 14 = 0) and (a > max14) then
        max14 := a;
      if (a mod 7 = 0) and (a > max7) then
      begin
        max7 := a;
        continue;
      end;
      if (a > max) then
        max := a;
      if (a mod 2 = 0) and (a > max_even) then
        max_even := a;
      i := i + 1;
    end;
    if max14 > max7 then
      R := max14 * max
    else
    if max14 * max > max7 * max_even then
      R := max14 * max
    else
      R := max7 * max_even;
    exit(R);
  end;

begin
  readln(N);
  writeln(optimal());
  readln();
end.
