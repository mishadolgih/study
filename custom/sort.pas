program sort;

const
  N = 5;

var
  A: array[1..N] of longint;
  i, j, max, t: longint;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000);

  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  for i := 1 to N - 1 do
  begin
    max := i;
    for j := i + 1 to N do
    begin
      if A[j] > A[max] then
        max := j;
    end;
    t := A[i];
    A[i] := A[max];
    A[max] := t;
  end;                     //((n-1)^2/(5*10^5)) мс

  for i := 1 to N do
    Write(A[i], ' ');
  readln();
end.
