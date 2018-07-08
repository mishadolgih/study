program Project31;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, i1, Sum: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  i1 := 1;
  Sum := A[1] + A[2];
  for i := 2 to N - 1 do
    if A[i] + A[i + 1] > Sum then
    begin
      i1 := i;
      Sum := A[i] + A[i + 1];
    end;

  writeln(i1);
  readln();
end.


