program optimal;

const
  NLim = 1000010;

var
  n, k, i: longint;
  A: array[1..NLim] of int64;
  s: int64;

begin
  Read(n, k);
  for i := 1 to n do
    Read(A[i]);
  s := 0;
  for i := 1 to k do
    s := s + A[i];
  Write(round(s / k), ' ');
  for i := 2 to (n - k + 1) do
  begin
    s := s - A[i - 1] + A[i - 1 + k];
    Write(round(s / k), ' ');
  end;
end.
