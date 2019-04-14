program optimal;

  uses sysutils;



var
  time: string;
  N, i, h, m, s, d, x, y, z: integer;
//  errorCode: word;


begin
  Assign(input, 'tests/03');
reset(input);
  d := 1;
  readln(N);
  readln(time);
  sscanf(time, '%d:%d:%d', [@x, @y, @z]);

  for i := 2 to N do
  begin
    readln(time);
    sscanf(time, '%d:$d:%d', [@h, @m, @s]);    //??????????

    if x < h then
      d += 1
    else if y < m then
      d += 1
    else if z <= s then
      d += 1;
    x := h;
    y := m;
    z := s;
  end;

  writeln(d);
  readln();
end.

