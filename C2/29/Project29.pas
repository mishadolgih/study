program Project29;

const
  N = 30;

var
  a: array [1..N] of integer;
  i, k, max, max2: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  if A[1] > A[2] then
  begin
    max := A[1];
    max2 := A[2];
  end
  else
  begin
    max := A[2];
    max2 := A[1];
  end;

  for i := 3 to N do
    if A[i] > max then
    begin
      max2 := max;
      max := A[i];
    end
    else if A[i] > max2 then
      max2 := A[i];
  writeln(max2);
  readln();
end.
