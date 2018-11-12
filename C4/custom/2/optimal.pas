program optimal;

uses
  Math;

var
  a, N: integer;

  function optimal(): integer;
  var
    i, max14, max7, max2, maxA, maxB, R: integer;
  begin
    max14 := 0;
    max7 := 0;
    max2 := 0;
    maxA := 0;
    maxB := 0;
    R := 0;
    i := 1;
    while i <= N do
    begin
      readln(a);
      if (a mod 14 = 0) and (a > max14) then
        max14 := a;
      if (a mod 7 = 0) and (a mod 2 <> 0) and (a > max7) then
        max7 := a;
      if (a mod 2 = 0) and (a mod 7 <> 0) and (a > max2) then
        max2 := a;
      if (a >= maxA) then
      begin
        maxB := maxA;
        maxA := a;
      end;
      if (a < maxA) and (a > maxB) then
        maxB := a;
      i := i + 1;
      i := i + 1;
    end;
    if (max14 = maxA) then
      R := ifthen(max14 * maxB > max7 * max2, max14 * maxB, max7 * max2)
    else
      R := ifthen(max14 * maxA > max7 * max2, max14 * maxA, max7 * max2);
    exit(R);
  end;

begin
  readln(N);
  writeln(optimal());
  readln();
end.
