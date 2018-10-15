program test;


const
  NLim = 20;
  VLim = 5;


var
  i, j, max, max7, max_even, R, N, t: integer;
  A: array[1..NLim] of integer;

  function simple(): integer;
  begin
    max := 0;
    for i := 1 to (N-1) do
      for j:= 2 to N do
        if (A[i] <> A[j]) and (A[i] * A[j] mod 14 = 0) and (A[i] * A[j] > max) then
          max := A[i] * A[j];
    exit(max);
  end;

  function optimal(): integer;
  begin
max := 0;
  max7 := 0;
  max_even := 0;
  R := 0;
  i := 0;
 for i := 1 to N  do
  begin
    if (A[i] mod 7 = 0) and (A[i] > max7) then
      max7 := A[i];
    if (A[i] > max) and (A[i] mod 7 <> 0) then
      max := A[i];
    if (A[i] mod 2 = 0) and (A[i] > max_even) and (A[i] mod 7 <> 0) then
      max_even := A[i];
  end;
  if max7 mod 2 = 0 then
    R := max7 * max
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
      writeln('error');
  end;
  writeln('done');
end.
