program Project34;

const
  N = 70;

var
  A: array[1..N] of integer;
  i, j, x, y: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  x := A[1];
  y := A[1];
  for i := 2 to N do
  begin
    if A[i] > x then
      x := A[i];
    if A[i] < y then
      y := A[i];
  end;
  writeln(x - y);
  readln();
end.

