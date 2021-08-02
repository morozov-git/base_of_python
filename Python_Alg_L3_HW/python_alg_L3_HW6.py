# 6. В одномерном массиве найти сумму элементов, находящихся между минимальным и максимальным элементами.
# Сами минимальный и максимальный элементы в сумму не включать.

import random as rnd

numbers = []
for i in range(10):
	numbers.append(rnd.randint(100, 10000))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)
numbers_sort = sorted(numbers)
print(f"Отсортированный по значениям массив:", *numbers_sort)
min_max_ind = [0, 0]
for i in numbers:
	if i == numbers_sort[0]:
		min_max_ind[0] = numbers.index(i)
	if i == numbers_sort[-1]:
		min_max_ind[1] = numbers.index(i)
sum_elem = 0
if min_max_ind[0] < min_max_ind[1]:
	for ind in range(min_max_ind[0] + 1, min_max_ind[1]):
		sum_elem += numbers[ind]
else:
	for ind in range(min_max_ind[1] + 1, min_max_ind[0]):
		sum_elem += numbers[ind]
#print(min_max_ind)
print(f"\nСумма элементов между максимальным (индекс элемента: {min_max_ind[1]}) и\n"
	  f"минимальным (индекс элемента: {min_max_ind[0]}) элементами массива равна: {sum_elem}")