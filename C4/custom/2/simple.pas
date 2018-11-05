program simple;

const
  NLim = 10000;
var
  A: array[1..NLim] of integer;
  i, N: integer;

  function simple(): integer;
  var
    j, max, i: integer;
  begin
    max := 0;
    begin
      for i := 1 to (N - 1) do
        for j := i + 1 to N do
          if (A[i] * A[j] mod 14 = 0) and (A[i] * A[j] > max) then
            max := A[i] * A[j];
    end;
    exit(max);
  end;

begin
  readln(N);
  for i := 1 to N do
    readln(A[i]);
  writeln(simple());
end.
