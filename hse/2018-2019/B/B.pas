program B;

const
  NLim = 100000;

var
  n, i, m, j, min, k, t: longint;
  A: array[1..NLim] of smallint;

begin
  readln(N);
  for i := 1 to N do
    Read(A[i]);

  for i := 1 to N - 1 do
  begin
    min := i;
    for j := i + 1 to N do
    begin
      if A[j] < A[min] then
        min := j;
    end;
    t := A[i];
    A[i] := A[min];
    A[min] := t;
  end;
  //for i := 1 to N do
  //  write(A[i], ' ');
  //writeln();

  if A[1] = 1 then
  begin
    m := 1;
    k := 0;
  end
  else
  begin
    m := 0;
    k := 1;
  end;

  for i := 2 to N do
    if A[i] = A[i - 1] then
    begin
      k := k + 1;
      if A[i] = k then
      begin
        m :=m + k;
        k := 0;
      end;
    end
    else
      k := 1;
  writeln(m);
  readln();
  readln();
end.
