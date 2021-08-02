# 5. В массиве найти максимальный отрицательный элемент. Вывести на экран его значение и позицию в массиве.

import random as rnd

numbers = []
for i in range(30):
	numbers.append(rnd.randint(-10, 10))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)
max_neg_elem = [0]
for i in numbers:
	if i < 0 and max_neg_elem[0] == 0:
		max_neg_elem[0] = i
	if i < 0 and i > max_neg_elem[0]:
		max_neg_elem[0] = i
ind_i = 0
for i in numbers:
	ind_i += 1
	if i == max_neg_elem[0]:
		max_neg_elem.append(ind_i - 1)
print(f"\nМаксимальный отрицательный элемент в массиве: {max_neg_elem[0]}, его позиция в массиве:", *max_neg_elem[1:])
