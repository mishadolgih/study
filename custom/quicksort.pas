program quicksort;

const
  N = 5;
var
  k: integer;
  A: array[1..N] of integer;

  procedure swap(x, y: integer);
  var
    t: integer;
  begin
    t := A[x];
    A[x] := A[y];
    A[y] := t;
  end;

  function partition(lo, hi: integer): integer;
  var
    pivot, i, j: integer;
  begin
    pivot := A[hi];
    i := lo;
    for j := lo to hi - 1 do
      if A[j] <= pivot then
      begin
        swap(i, j);
        i := i + 1;
      end;
    swap(i, hi);
    exit(i);
  end;

  procedure quicksort(lo, hi: integer);
  var
    p: integer;
  begin
    if lo < hi then
    begin
      p := partition(lo, hi);
    quicksort(lo, p - 1);
    quicksort(p + 1, hi);
    end;
  end;

begin
  for k := 1 to N do
    A[k]:=random(10);
  for k := 1 to N do
    write(A[k], ' ');
  writeln();
  quicksort(1, N);
  for k := 1 to N do
    write(A[k], ' ');
end.
