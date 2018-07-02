program Project33;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, j, min, min2, s: integer;


begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  min := 1;
  min2 := 2;
  s := abs(A[1] - A[2]);
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      if abs(A[i] - A[j]) < s then
      begin
        min := i;
        min2 := j;
        s := abs(A[i] - A[j]);
      end;
  writeln(min, ' ', min2);
  readln();
end.

