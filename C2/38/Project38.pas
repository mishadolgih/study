program Project38;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, k, kmax: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  kmax := 0;
  k := 0;
  for i := 1 to N do
  begin
    if A[i] < 0 then
      k := k + 1
    else
      k := 0;
    if k > kmax then
      kmax := k;
  end;
  writeln(kmax);
  readln();
end.
