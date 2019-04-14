program optimal;

uses
  Math;

var
  M, X, Y, W, H, l, k: longint;

  function optimal(): int64;

  begin
    if X >= M then
      X := X - ((X div M) * M);
    if Y >= M then
      Y := Y - ((Y div M) * M);
    l := ceil((X + W) / M);
    k := ceil((Y + H) / M);
    exit(l * k);
  end;

begin
//    Assign(input, 'tests/00');
  reset(input);
  readln(M);
  readln(X);
  readln(Y);
  readln(W);
  readln(H);
  writeln(optimal());
  readln();
end.
