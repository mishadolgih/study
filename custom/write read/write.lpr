program write;

var
  x:integer;

begin
  Assign(output, 'tests/00.a');
  readln(x);
  rewrite(output);
  writeln(x);
end.

