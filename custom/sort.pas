program sort;

const
  N = 5;
  Nstart = 1;

var
  A: array[1..N] of longint;
  B: array[1..N] of longint;
  i, j, max, t: longint;

  procedure qSort(Nstart, N: longint);
  var
    L, R, c, X: integer;
  begin
    if Nstart >= N then
      exit;
    L := Nstart;
    R := N;
    x := B[(L + R) div 2];
    while L <= R do
    begin
      while B[L] < x do
        L := L + 1;
      while B[R] > x do
        R := R - 1;
      if L <= R then
      begin
        C := B[L];
        B[L] := B[R];
        B[R] := c;
      end;
    end;
    qsort(Nstart, R);
    qsort(L, N)
  end;

begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000);

  for i := 1 to N do
    B[i] := A[i];

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
  end;
  for i := 1 to N do
    Write(A[i], ' ');     //((n-1)^2/(5*10^5)) мс
    writeln();

  qSort(Nstart, N);



  for i := 1 to N do
    Write(B[i], ' ');
  readln();
end.
