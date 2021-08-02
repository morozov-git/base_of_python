"""
3. Массив размером 2m + 1, где m – натуральное число, заполнен случайным образом. Найдите в массиве медиану.
Медианой называется элемент ряда, делящий его на две равные части: в одной находятся элементы, которые не
меньше медианы, в другой – не больше медианы. Задачу можно решить без сортировки исходного массива. Но если
это слишком сложно, то используйте метод сортировки, который не рассматривался на уроках
"""

from random import randint

len_numbers_index = 10  # коэффициент длины массива(натуральное число)
len_array = 2 * len_numbers_index + 1  # размер массива
numbers = []

for i in range(len_array):
	numbers.append(randint(-100, 100))
print(f"\nЗаданный массив случайных целых чисел:", numbers)

# numbers = [-20, 61, 49, -55, -6, -82, -40, -87, -54, 27, -6, -90, 77, 78, 9, 29, 85, -30, 50, -38, 55]
# numbers = [36, 77, -60, -30, -14, 33, 32, 45, -92, 76, -86, 28, -2, 17, 94, 33, 42, 90, 56, -40, -48, 18, 54, 0, -51, -29, 31, 89, 62, 69, -53, 46, 29, -59, 83, 94, 44, 29, 97, -97, -87, 4, -23, 18, -85, 100, -60, -91, 27, 35, 2, 33, 86, -72, -82, 59, -84, -66, 24, 100, -1, -84, -3, -72, -18, -73, 63, -26, -96, 83, 86, 26, -50, 81, 59, -6, -41, 52, -98, 43, -71, -49, 46, 46, -41, 47, -55, 23, 33, 98, -98, -13, -3, -91, -75, -6, -28, -31, -49, 1, -33, -72, -87, -98, 73, -58, -36, -78, 61, 44, 58, -1, -66, 98, 14, -57, -11, 17, 10, -1, 23, 25, -45, 33, -19, 49, 93, -15, -36, -76, -78, -39, 48, -80, -99, 27, 64, 15, -6, 13, 15, 22, 47, -95, -29, 42, 72, -67, -70, 25, 39, -7, 18, 16, 12, -79, -50, -90, 54, 46, -17, 13, 35, -94, -63, -93, 53, -40, -8, 18, 38, 28, 30, 67, 53, 99, 54, -79, 56, 24, -54, 37, 0, -100, 36, 6, -40, -90, -76, 0, 6, -56, -17, 41, 95, 19, 95, 62, -33, 19, 30]
# numbers = [0, -8, 1, 7, 9, 5, 3, 7, -4, -1, 5, 10, 8, -8, 0, -3, 5, 6, 3, -7, -10]
# numbers = [-4, -5, -7, -4, 9, -4, -6, 10, -3, 8, -5, -5, -5, -5, -7, -8, -9, -8, 3, 6, -7]
# numbers = [-4, -5, -7, -4, 9, -4, -6, 10, -3, 8, -4, -6, -5, -7, -7, -8, -9, -8, 3, 6, -7]
# numbers = [-5, 8, 4, 6, 7, 4, 2, -4, -4, 0, 5, -5, 7, -10, -2, 3, 7, 10, 3, 1, -2]
# print(f"\nЗаданный массив случайных целых чисел:", numbers)

mediana = 0

for i in range(len(numbers)):
	mediana_count_left = 0
	mediana_count_right = 0
	mediana_count_center = 0
	a = numbers[i]
	for elem in numbers:
		if a < elem:
			mediana_count_left += 1
		if a > elem:
			mediana_count_right += 1
		if a == elem:
			mediana_count_center += 1
		if mediana_count_left > len(numbers) // 2 + 1 or mediana_count_right > len(numbers) // 2 + 1:
			break
	if mediana_count_left > len(numbers) // 2 + 1 or mediana_count_right > len(numbers) // 2 + 1:
		continue
	if mediana_count_left - (mediana_count_right + mediana_count_center // 2) == 1 or \
			mediana_count_right - (mediana_count_left + mediana_count_center // 2) == 1 or \
			mediana_count_left - (mediana_count_right + mediana_count_center // 2) == 0 or \
			mediana_count_right - (mediana_count_left + mediana_count_center // 2) == 0:
		mediana = a
		break


print(f"\nМедиана в заданном массиве соответствует элементу с индексом: {i} и равна: {mediana}")

sorted_numbers = sorted(numbers)
print(f"\nОтсортированный  массив для проверки: ", *sorted_numbers)