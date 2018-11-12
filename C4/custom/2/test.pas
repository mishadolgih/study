program test;

uses
  Math;

const
  NLim = 40;
  VLim = 300;


var
  i, N, t: integer;
  A: array[1..NLim] of integer;

  function simple(): integer;
  var
    j, max: integer;
  begin
    max := 0;
    begin
      for i := 1 to (N - 1) do
        for j := i + 1 to N do
          if (A[i] * A[j] mod 14 = 0) and (A[i] * A[j] > max) then
            max := A[i] * A[j];
    end;
    exit(max);
  end;

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
      if (A[i] mod 14 = 0) and (A[i] > max14) then
        max14 := A[i];
      if (A[i] mod 7 = 0) and (A[i] mod 2 <> 0) and (A[i] > max7) then
        max7 := A[i];
      if (A[i] mod 2 = 0) and (A[i] mod 7 <> 0) and (A[i] > max2) then
        max2 := A[i];
      if (A[i] >= maxA) then
      begin
        maxB := maxA;
        maxA := A[i];
      end;
      if (A[i] < maxA) and (A[i] > maxB) then
        maxB := A[i];
      i := i + 1;
    end;
    if (max14 = maxA) then
      R := ifthen(max14 * maxB > max7 * max2, max14 * maxB, max7 * max2)
    else
      R := ifthen(max14 * maxA > max7 * max2, max14 * maxA, max7 * max2);
    exit(R);
  end;

begin
  randomize();
  for t := 1 to 10000 do
  begin
    N := Nlim - random(NLim div 2);
    for i := 1 to N do
      A[i] := random(VLim) + 1;

    if simple() <> optimal() then
    begin
      optimal();
    end;
  end;
  writeln('done');
  readln();
end.
