program test;

const
  Lim = 1000;

var
  i, q, max, x, N: integer;
  A: array[1..Lim] of integer;

  function simple_search(): integer;
  begin
    max := A[1];
    for i := 2 to N do
      if A[i] > max then
        max := A[i];
    q := 0;
    for i := 1 to N do
      if A[i] = max then
        q := q + 1;
    exit(q);
  end;

  function optimal_search(): integer;
  begin
    max := A[1];
    q := 1;
    for i := 2 to N do
      if A[i] = max then
        q := q + 1
      else if A[i] > max then
      begin
        max := A[i];
        q := 1;
      end;
    exit(q);
  end;

begin
  randomize();
  N := random(1000);

  for i := 1 to N do
    A[i] := random(10000);
  for i := 1 to N do
    Writeln(A[i]);

  if simple_search = optimal_search then
    writeln('working')
  else
    writeln('error');
end.

