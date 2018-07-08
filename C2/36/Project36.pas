program Project36;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, k, kMax: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(10);
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  k := 1;
  kMax := 1;
  for i := 2 to N do
    if A[i] = A[i - 1] then
    begin
      k := k + 1;
      if k > kMax then
        kMax := k;
    end
    else
      k := 1;

  writeln(kmax);
  readln();
end.

