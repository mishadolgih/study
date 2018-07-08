program Project39;

uses
  Math;

const
  N = 30;

var
  A: array[1..N] of integer;
  i, j, k, imax, kmax, q: integer;

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
    q := floor(sqrt(A[i]));
    k := ifthen(sqr(q) = A[i], -1, 0);
    for j := 1 to q do
      if A[i] mod j = 0 then
        k += 2;
    if k > kmax then
    begin
      kmax := k;
      imax := i;
    end;
  end;

  writeln(imax);
  readln();
end.


