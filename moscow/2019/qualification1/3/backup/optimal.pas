program optimal;

uses
  Math;

const
  NLim = 65536;
var
  N, i, k: longint;
  A: array[1..NLim] of longint;

  function optimal(): int64;

  begin
    k := 1;
    while N > 2 do
    begin
      N := n div 2;
      k := k + 1;
    end;
    for i := k downto 1 do begin
      m := 1;
      for j := 1 to i do
        m := m* 2;
      if A[m] = 1 then

    end;
    exit(k);
  end;


begin
  readln(N);
  for i := 1 to N-1 do
    readln(A[i]);
  writeln(optimal());
  readln();
end.
