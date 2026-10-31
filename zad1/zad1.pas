program zad1;
var
  a: array[1..100] of integer;
  n, i, sum: integer;
begin
  write('Введите количество элементов массива: ');
  readln(n);

  writeln('Введите элементы массива:');
  for i := 1 to n do
    read(a[i]);

  sum := 0;
  for i := 1 to n do
    if (i mod 2 = 1) then 
      sum := sum + a[i];

  writeln('Сумма элементов на нечётных позициях = ', sum);
end.
