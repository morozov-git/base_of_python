# 4. Определить, какое число в массиве встречается чаще всего.

import random as rnd

numbers = []
for i in range(30):
	numbers.append(rnd.randint(1, 10))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)
max_count_number = [0, 0]
for i in numbers:
	# print(i, "-", numbers.count(i))
	if numbers.count(i) >= max_count_number[0]:
		max_count_number = i, numbers.count(i)
print(f"Число: {max_count_number[0]} встречается в массиве чаще всего ({max_count_number[0]} раз).")