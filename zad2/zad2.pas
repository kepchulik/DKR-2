program zad2;
var
  s, sub: string;
  n, i, j, count: integer;
  found: boolean;
  subs: array[1..100] of string;
begin
  write('Введите строку: ');
  readln(s);
  write('Введите длину подстроки: ');
  readln(n);

  count := 0;

  for i := 1 to length(s) - n + 1 do
  begin
    sub := copy(s, i, n);
    found := false;

    for j := 1 to count do
      if subs[j] = sub then
        found := true;

    if not found then
    begin
      count := count + 1;
      subs[count] := sub;
    end;
  end;

  writeln('Количество уникальных подстрок длины ', n, ' = ', count);
end.
