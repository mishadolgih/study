program test;


const
  NLim = 4;
  VLim = 30;


var
  i, N, t: integer;
  A: array[1..NLim] of integer;

  function simple(): integer;
  var
    j, max, i: integer;
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
    max, max7, max14, max_even, R: integer;
  begin
    max := 0;
    max7 := 0;
    max14 := 0;
    max_even := 0;
    R := 0;
    i := 0;
    for i := 1 to N do
    begin
      if (A[i] mod 14 = 0) and (A[i] > max14) then
        max14 := A[i];
      if (A[i] mod 7 = 0) and (A[i] > max7) then
      begin
        max7 := A[i];
        continue;
      end;
      if (A[i] > max) then
        max := A[i];
      if (A[i] mod 2 = 0) and (A[i] > max_even) then
        max_even := A[i];
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
