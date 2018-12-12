program optimal;

const
  NLim = 100000;

var
  n, p, k, max, t, m, d: int64;
  i, j:longint;
  A: array [1..NLim] of int64;



begin
  Read(n, p, k);
  for i := 1 to N do
    Read(A[i]);

  m := 0;
  for i := 1 to N do
  begin
    m := m + (A[i] div k);
    A[i] := A[i] mod k;
  end;

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
  end;

  for i := 1 to N do
  begin
    d := k - A[i];
    if (p >= d) and (p - d >= 0) then
    begin
      m := m + 1;
      p := p - d;
    end;
  end;

  if p > 0 then
    m := m + p div k;
  writeln(m);
end.
