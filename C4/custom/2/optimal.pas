program optimal;

uses
  Math;

var
  a, N: integer;

  function optimal(): integer;
  var
    i, max14, max7, max2, maxA, maxB: integer;
  begin
    max14 := 0;
    max7 := 0;
    max2 := 0;
    maxA := 0;
    maxB := 0;
    i := 1;
    for i := 1 to N do
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
    end;
    exit(max(max7 * max2, ifthen(max14 = maxA, max14 * maxB, max14 * maxA)));
  end;

begin
  readln(N);
  writeln(optimal());
  readln();
end.
