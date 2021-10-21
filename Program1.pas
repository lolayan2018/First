function IsLeapYear(y: integer): boolean;
begin
  if (((y mod 4) = 0) and ((y mod 100) <> 0)) or ((y mod 400) = 0) then
    result := True
  else
    result := False;
end;


begin

end.