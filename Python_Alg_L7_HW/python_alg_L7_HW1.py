"""
1. Отсортируйте по убыванию методом "пузырька" одномерный целочисленный массив, заданный случайными числами
на промежутке [-100; 100). Выведите на экран исходный и отсортированный массивы. Сортировка должна быть
реализована в виде функции. По возможности доработайте алгоритм (сделайте его умнее).
"""


from random import randint

numbers = []
for i in range(100):
	numbers.append(randint(-100, 100))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)

# numbers = [18, 27, 41, 44, 55, 72, 74, 81, 83, 100]
# numbers = [-99, -98, -97, -94, -93, -92, -84, -76, -73, -71, -69, -65, -59, -56, -54, -54, -51, -51, -51, -51, -51, -48, -46, -42, -42, -41, -41, -41, -39, -39, -38, -36, -35, -33, -32, -31, -30, -28, -26, -25, -23, -20, -19, -17, -15, -15, -10, -10, -6, 0, 1, 3, 5, 9, 9, 11, 11, 13, 16, 17, 17, 19, 22, 24, 24, 25, 26, 30, 32, 34, 36, 37, 38, 39, 39, 39, 44, 47, 48, 49, 51, 53, 54, 55, 58, 59, 60, 60, 61, 61, 64, 67, 68, 74, 74, 80, 80, 87, 96, 99]
# print(f"\nЗаданный массив случайных целых чисел:", *numbers)

def sorted_numbers(numbers, reverse_num = False):
	n = 1
	try_count = 0
	#max_number = numbers[len(numbers) - 1] #numbers[len(numbers) // 2]
	min_number = numbers[0] #numbers[len(numbers) // 2]
	while n < len(numbers):
		change_count = 0
		for i in range(len(numbers)-n):
			if numbers[i] > numbers[i+1]:
				numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
				change_count += 1
			if numbers[i] < numbers[i + 1]:
				if min_number >= numbers[i]:
					min_number = numbers[i]
				# if max_number <= numbers[i + 1]:
				# 	max_number = numbers[i + 1]
		n += 1
		try_count += 1
		if min_number == numbers[0] and change_count == 0: # and change_flag == False and max_number == numbers[len(numbers) - 1]
			n = len(numbers)
			break
	# print(numbers)
	# print(f"\nОтсортированный массив случайных целых чисел:", *numbers)
	print(f"\nКоличество проходов по массиву для сортировки:", try_count)
	if reverse_num == True:
		return numbers[::-1]
	return numbers


print(f"\nОтсортированный по убыванию массив случайных целых чисел: ", *sorted_numbers(numbers, True))
#print(f"\nОтсортированный по возрастанию  массив случайных целых чисел: ", *sorted_numbers(numbers))