# 7. В одномерном массиве целых чисел определить два наименьших элемента.
# Они могут быть как равны между собой (оба являться минимальными), так и различаться.

import random as rnd

numbers = []
for i in range(10):
	numbers.append(rnd.randint(100, 10000))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)
numbers_sort = sorted(numbers)
print(f"Два минимальных элемента массива равны: {numbers_sort[0]} и {numbers_sort[1]}")