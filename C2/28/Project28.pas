program Project28;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, k: integer;
  s, min: real;

begin
  for i := 1 to N do
    A[i] := random(10000) - 5000;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  s := 0;
  for i := 1 to N do
    s := s + A[i];
  s := s / N;

  k := 1;
  for i := 2 to N do
    if abs(a[i] - s) < abs(a[k] - s) then
      k := i;

  writeln(k);
  readln();
end.

