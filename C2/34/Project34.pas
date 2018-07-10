program Project34;

uses
<<<<<<< HEAD
  Math;
=======
  math;
>>>>>>> 6ce2934fa99388e1d03ccbb46210fec37bb88044

const
  N = 70;

var
  A: array[1..N] of integer;
  i, j, x, y: integer;

<<<<<<< HEAD
begin
=======
begin;
>>>>>>> 6ce2934fa99388e1d03ccbb46210fec37bb88044
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

<<<<<<< HEAD
  writeln(MaxValue(A) - MinValue(A));
=======
  x := MaxValue(PInteger(@A[1]),High(A)+1);
  y := MinValue(PInteger(@A[1]),High(A)+1);

  writeln(x - y);
>>>>>>> 6ce2934fa99388e1d03ccbb46210fec37bb88044
  readln();
end.
