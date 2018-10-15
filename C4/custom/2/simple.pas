program simple;
 const NLim = 10000;
var
  i, j, max, N: integer;
  A:array[1..NLim] of integer;
begin
  max := 0;
  readln(N);
  for i := 1 to N do
    readln(A[i]);
  for i := 1 to (N-1) do
    for j := 2 to N do
      if (A[i] <> A[j]) and (A[i] * A[j] mod 14 = 0) and (A[i] * A[j] > max) then
        max := A[i] * A[j];
  writeln(max);
  readln();
end.

