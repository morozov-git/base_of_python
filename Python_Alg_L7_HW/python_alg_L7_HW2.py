"""
2. Отсортируйте по возрастанию методом слияния одномерный вещественный массив, заданный случайными числами
на промежутке [0; 50). Выведите на экран исходный и отсортированный массивы.
"""

from random import randint

numbers = []
for i in range(10):
	numbers.append(randint(0, 50))
print(f"\nЗаданный массив случайных целых чисел:", *numbers)
# numbers = [50, 31, 39, 36, 25, 10, 3, 40, 50, 6]
# print(f"\nЗаданный массив случайных целых чисел:", numbers)

def sort_merge_numbers(numbers, reverse = False):
	if len(numbers) == 1 or len(numbers) == 0:
		return
	left_numbers = numbers[:len(numbers) // 2]
	right_numbers = numbers[len(numbers) // 2:]
	sort_merge_numbers(left_numbers)
	sort_merge_numbers(right_numbers)
	left_index = 0
	right_index = 0
	sorted_numbers_index = 0
	sorted_numbers = [0] * (len(left_numbers) + len(right_numbers))
	while left_index < len(left_numbers) and right_index < len(right_numbers):
		if left_numbers[left_index] <= right_numbers[right_index]:
			sorted_numbers[sorted_numbers_index] = left_numbers[left_index]
			left_index += 1
		else:
			sorted_numbers[sorted_numbers_index] = right_numbers[right_index]
			right_index += 1
		sorted_numbers_index += 1
	while left_index < len(left_numbers):
		sorted_numbers[sorted_numbers_index] = left_numbers[left_index]
		left_index += 1
		sorted_numbers_index += 1
	while right_index < len(right_numbers):
		sorted_numbers[sorted_numbers_index] = right_numbers[right_index]
		right_index += 1
		sorted_numbers_index += 1
	for i in range(len(numbers)):
		numbers[i] = sorted_numbers[i]
	# print(left_numbers)
	# print(right_numbers)
	# print(sorted_numbers)
	if reverse == True:
		return numbers[::-1]
	return numbers


#sort_merge_numbers(numbers)
print(f"\nОтсортированный по возрастанию массив случайных целых чисел:", *sort_merge_numbers(numbers))
print(f"\nОтсортированный по убыванию массив случайных целых чисел:", *sort_merge_numbers(numbers, True))
