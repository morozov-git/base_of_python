# 7. Напишите программу, доказывающую или проверяющую, что для множества натуральных
# чисел выполняется равенство: 1+2+...+n = n(n+1)/2, где n - любое натуральное число.

def num(): # получаем от ползователья n-й элемент последовательности
	while True:
		num = input("\nВведите n-й элемент последовательности:\n")
		if num.isdigit() == True:
			return int(num)


def sum_rec(n): # считаем сумму элементов последователтности с помощью рекурсии
    if n <= 1:
        return n
    return n + sum_rec(n - 1)


user_num = num()
n_func = user_num * (user_num + 1) / 2
sum_elem = sum_rec(user_num)
print(f"Вы ввели n={user_num}")
print(f"Сумма элементов последовательности равна {sum_elem}")
print(f"n(n+1)/2 = {n_func}")
if sum_elem == n_func:
	print(f"Равенство верно! Cумма элементов последовательности 1,2,3...{user_num} = n(n+1)/2"  )