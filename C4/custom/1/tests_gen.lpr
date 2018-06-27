program tests_gen;
const
  NLim = 30;

var
  ans, t, N: longint;
  data: array[1..Nlim] of longint;

procedure init_data();
  var i : LongInt;
begin
  N := random(NLim) + 1;
  for i := 1 to N do
    data[i] := 50;

end;

begin
  randomize();
  for t := 0 to 4 do
  begin
    init_data();
    print_data();
    readln(ans);
    save_test(t);
  end;
end.

