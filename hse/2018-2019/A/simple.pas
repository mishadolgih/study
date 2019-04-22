program simple;

uses math;

var
  N, P, Q, x, y, a, b:int64;

begin
  readln(N, P, Q);
  x:=max(P, Q);
  y:=min(P, Q);

  a:= ifthen(y-(N-x)>=1, y-(N-x), 1);
  b := ifthen(x+y-1>=N, N, x+y-1);
  writeln(a,' ', b);
end.

