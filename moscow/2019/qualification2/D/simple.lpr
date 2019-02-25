program simple;
const
  NLim=1000010 ;

var
   n, k, i, j:longint;
   s:int64;
   A:array[1..NLim]of int64;
begin
  //assign(input, 'tests/01');
  //reset(input);
  read(n, k);
  for i :=1 to N do
  read(A[i]);
  for i := 1 to (n-k+1) do
    begin
    s:= 0;
    for j := i to (i+k-1) do
        s:=s+ A[j];
    write(round(s/k), ' ');
    end;
end.

