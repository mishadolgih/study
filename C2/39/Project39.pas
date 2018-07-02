program Project39;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, j, k, imax, kmax: integer;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(99) + 1;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  kmax := 0;
  for i := 1 to N do
  begin
    if A[i] = 1 then
      k := 1
    else
      k := 2;
    j := 2;
    while j * j < A[i] do
    begin
      if A[i] mod j = 0 then
        k := k + 2;
      j := j + 1;
    end;
    if j * j = A[i] then
      k := k + 1;
    if k > kmax then
    begin
      kmax := k;
      imax := i;
    end;
  end;
  writeln(imax);
  readln();
end.


