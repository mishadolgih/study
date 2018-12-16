program test;

uses
  Math;

const
  VLim = 30;

var
  : integer;

  function simple(): integer;


  function optimal(): int64;

begin
  for n := 1 to VLim do
    for m := 1 to VLim do
      for a := 1 to VLim do
        for b := 1 to VLim do
          if simple() <> optimal() then
            writeln('error!');
  writeln('done');
end.
