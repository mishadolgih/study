program optimal;

uses
  Math;

var
  x, k, n, ans: int64;

begin
 // assign(input, 'tests/00');
  //reset(input);
  readln(n, k, x);
  ans := x + k * ceil(x / (n - k));
  writeln(ans);
end.
