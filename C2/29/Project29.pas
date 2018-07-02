program Project29;


mats;
const
  N = 30;

var
  a: array [1..N] of integer;
  i, k, max, max2: integer;


begin
  randomize();
  for i := 1 to N do
    A[i] := random(1000) - 500;
  for i := 1 to N do
    Write(A[i], ' ');
  writeln();

   max := ifthen(A[1]>A[2], A[1], A[2]);
   max2 := ifthen(A[1] <A[2], A[1], A[2]);

  for i := 3 to N do
    if A[i] > max then
    begin
      max2 := max;
      max := A[i];
    end
    else if A[i] > max2 then
      max2 := A[i];
  writeln(max2);
  readln();
end.
