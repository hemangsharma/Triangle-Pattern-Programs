program triangle;

var
  rows, i, j, k: integer;

begin
  write('Enter the number of rows: ');
  readln(rows);

  for i := 1 to rows do
  begin
    for j := 1 to rows - i do
      write(' ');
    for k := 1 to i do
      write('* ');
    writeln;
  end;
end.