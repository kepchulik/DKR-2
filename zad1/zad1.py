n = int(input('Введите количество элементов массива: '))

a = []
print('Введите элементы массива:')
for _ in range(n):
    a.append(int(input()))

sum = 0
for i in range(n):
    if i % 2 == 0:
        sum += a[i]

print('Сумма элементов на нечётных позициях =', sum)
