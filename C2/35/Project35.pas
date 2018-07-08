program Project35;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, max, k: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  k := 1;
  max := A[1] + A[2] + A[3];
  for i := 2 to N - 2 do
    if (A[i] + A[i + 1] + A[i + 2]) > max then
    begin
      k := i;
      max := A[i] + A[i + 1] + A[i + 2];
    end;

  for i := k to k + 2 do
    write(A[i], ' ');
  readln();

end.


