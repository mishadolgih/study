program test;

const
  VLim = 30;

var
  a, b, n, m, d, r, t, x, y, s, s1, i: integer;
  Data: array[1..4] of integer;

  function simple(): integer;
  begin
    if (n < m) then
  begin
    x := m - n;
    y := 0;
    s1 := a * x + b * y;
    while x > 3 do
    begin
      x := x - 4;
      y := y + 1;
      if (a * x + b * y) < s1 then
        s1 := a * x + b * y;
    end;
    y := y + 1;
    if y * b < s1 then
      s1 := y * b;
  end
  else
    s1 := 0;
    exit(s1);
  end;

  function optimal(): integer;
  begin
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
    exit(s);
  end;

begin
  randomize();
  for t := 1 to 10000 do
  begin
    for i := 1 to 4 do
      Data[i] := VLim - random(VLim div 2);
    n := Data[1];
    m := Data[2];
    a := Data[3];
    b := Data[4];
    if simple() <> optimal() then
      optimal();

  end;
  writeln('done');
end.

