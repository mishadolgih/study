program optimal;

var
  a, b, n, m, s, r, d: integer;
begin
  //Assign(input, 'tests/02');
  //reset(input);
  readln(n);
  readln(m);
  readln(a);
  readln(b);
  r := m - n;
  d := r div 4;
  if n < m then      //   когда разеток больше
    if 4 * a < b then
      // когда 4 двойника дешевле 1 мультиплексера
      s := a * r
    else
    if b < a then
      // когда 1 мультиплексер дешевле 1 двойника
      if r mod 4 = 0 then
        // нужен ли дополнительный  мультиплексер
        s := b * d
      else
        s := b * d + b
    else
    if r mod 4 = 0 then
      if (b * d + (a * (r mod 4)) > b * d) then
        s := b * d
      else
        s := b * d + a * (r mod 4)
    else
    if (b * d + (a * (r mod 4)) > b * d + b) then
      s := b * (r div 4) + b
    else
      s := b * d + (a * (r mod 4))
  else
    s := 0;
  writeln(s);
  readln();
end.
