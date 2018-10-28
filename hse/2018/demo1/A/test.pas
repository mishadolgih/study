program test;

const
  NLim = 20;
  VLim = 5;

var
  i, q, max, N, t: integer;
  A: array[1..NLim] of integer;

  function simple(): integer;
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

  function optimal(): integer;
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
  for t := 1 to 10000 do
  begin
    N := Nlim - random(NLim div 2);
    for i := 1 to N do
      A[i] := random(VLim) + 1;

    if simple() <> optimal() then
      writeln('error');
  end;
  writeln('done');
end.

