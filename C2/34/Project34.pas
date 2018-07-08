program Project34;

uses
  Math;

const
  N = 70;

var
  A: array[1..N] of integer;
  i, j, x, y: integer;

begin
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

  writeln(MaxValue(A) - MinValue(A));
  readln();
end.
