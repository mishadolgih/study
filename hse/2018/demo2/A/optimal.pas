program optimal;

  //uses sysutils;



var
  s: string;
  N, HH, MM, SS, k, i, x: integer;
  errorCode: word;

  procedure del();
  begin
    Delete(s, 3, 1);
    Delete(s, 5, 1);
    val(s, x, ErrorCode);
  end;

  procedure time();
  begin
    HH := x div 10000;
    MM := x div 100 mod 100;
    SS := x mod 100;
  end;

begin
  Assign(input, 'tests/00');
  reset(input);
  k := 1;
  readln(N);
  readln(s);
  del();
  time();

  for i := 2 to N do
  begin
    readln(s);
    del();

    if x div 10000 <= HH then begin
      k += 1;
    time();
   // continue;
    end else

    if x div 100 mod 100 <= MM then begin
      k += 1;
    time();
    //continue;
        end else
    if x mod 100 <= SS then begin
      k += 1;
    time();
     end;
    //continue;
  end;

  writeln(k);
end.

