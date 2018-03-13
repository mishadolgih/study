program Project1;

var
  n1, n2, n3, n4, n5, m: integer;
begin
  Write('5 integers are entered: ');
  readln(n1, n2, n3, n4, n5);
  m := n1;
  if n2 > m then
    m := n2;
  if n3 > m then
    m := n3;
  if n4 > m then
    m := n4;
  if n5 > m then
  begin
    m := n5;
  end;
  writeln(m);
  readln;
end.
