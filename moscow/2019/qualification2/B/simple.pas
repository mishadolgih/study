program simple;

uses
math,
sysutils,
strutils;

var
  s:string;

function wtof(n:integer; s:string):real;
  var word:string; x:real;
begin
  word:=extractword(n, s, [#9]);
  word[pos('.', word)] := ',';
  x :=StrToFloat(word);
  exit(x);
end;

begin
  assign(input, 'tests/00');
  reset(input);

  while not EOF(input) do
  begin
    readln(s);
    if pos('.', s) > 0 then
      writeln(min(min(wtof(1, s), wtof(2, s)), wtof(3, s)):0:0);
  end;
  close(input);
  readln();
end.

