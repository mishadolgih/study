program Project30;

const
  N = 30;

var
  i, j, k: integer;
  A: array[1..N] of integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  k := 0;
  for i := 1 to N do
    if (A[i] > 0) then
    begin
      k := k + 1;
      if k = 3 then
        j := i;
    end;

  if k < 3 then
    writeln('there is no such elements')
  else
    writeln(j);
  readln();
end.

