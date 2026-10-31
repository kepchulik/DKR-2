s = input('Введите строку: ')
n = int(input('Введите длину подстроки: '))

count = 0
subs = [''] * 100

for i in range(len(s) - n + 1):
    sub = ''
    for k in range(i, i + n):
        sub += s[k]
    
    found = False
    
    for j in range(count):
        if subs[j] == sub:
            found = True
    
    if not found:
        subs[count] = sub
        count += 1

print('Количество уникальных подстрок длины', n, '=', count)
