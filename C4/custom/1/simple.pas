program simple;

const
  Lim = 1000;

var
  i, N, max, q: integer;
  A: array[1..Lim] of integer;

begin
  readln(N);
  for i := 1 to N do
    readln(A[i]);

  max := A[1];
  for i := 2 to N do
    if A[i] > max then
      max := A[i];

  q := 0;
  for i := 1 to N do
    if A[i] = max then
      q := q + 1;

  writeln(q);
end.

