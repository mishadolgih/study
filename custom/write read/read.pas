program read;

var
  x: real;

begin
  Assign(input, 'tests/00.a');
  reset(input);
  Readln(x);
  writeln(x);
end.
