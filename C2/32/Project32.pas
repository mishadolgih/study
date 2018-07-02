program Project32;

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

  if A[1] < A[2] then
  begin
    min := 1;
    min2 := 2;
  end
  else
  begin
    min := 2;
    min2 := 1;
  end;
  for i := 3 to N do
    if a[i] < a[min] then
    begin
      min2 := min;
      min := i;
    end
    else if a[i] < a[min2] then
      min2 := i;
  writeln(min, ' ', min2);
  readln();
end.
