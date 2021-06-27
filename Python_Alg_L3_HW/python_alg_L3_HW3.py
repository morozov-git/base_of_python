# 3. В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.

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
numbers[min_max_ind[0]] = numbers_sort[-1]
numbers[min_max_ind[1]] = numbers_sort[0]
print(f"Массив с переставленными мин. и макс. элементами:", *numbers)