function IsLeapYear(y: integer): boolean;
begin
  if (((y mod 4) = 0) and ((y mod 100) <> 0)) or ((y mod 400) = 0) then
    result := True
  else
    result := False;
end;

function LaterInYear(x, y:real): real;
begin
  if (x - x.Trunc()) >  (y - y.Trunc()) then
    result := x
  else if (x - x.Trunc()) <  (y - y.Trunc()) then
    result := y
  else 
    if x.Trunc() >  y.Trunc() then
      result := x
    else
      result := y;
end;

function DaysInYear(y: integer): integer;
begin
  if IsLeapYear(y) then 
    result:= 366
   else 
    result:= 365;
end;

function DaysInYearRange(a, b: integer): integer;
begin
  var c := 0;
  for var i := a to b do
  begin
    c += DaysInYear(i);
  end;
  result := c;
end;

begin

end.