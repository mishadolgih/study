program simple;

uses
  Math;

var
  : integer;


  function simple(): integer;


begin
  quicksort(A, lo, hi) is
    if lo < hi then
        p := partition(A, lo, hi)
        quicksort(A, lo, p - 1)
        quicksort(A, p + 1, hi)
  writeln(simple());
end.
