program optimal;

const
  Lim = 1000;

var
  i, N, max, q, x: integer;

begin
  //Assign(input, 'tests/01');
  //reset(input);
  readln(N);

  readln(x);
  max := x;
  q := 1;
  for i := 2 to N do
  begin
    readln(x);
    if x = max then
      q := q + 1
    else if x > max then
    begin
      max := x;
      q := 1;
    end;
  end;

  writeln(q);
  readln();
end.

