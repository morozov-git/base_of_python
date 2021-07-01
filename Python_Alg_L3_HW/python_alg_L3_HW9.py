# 9. Найти максимальный элемент среди минимальных элементов столбцов матрицы.

from random import random


def random_matrix(w, h):  # функция для создания матрицы из случайных чисел
	wide_matrix = w
	hight_matrix = h
	matrix_rnd = []
	print("\n Матрица:")  # убрать если не нужно построение матрицы
	for h in range(hight_matrix):
		line_rnd = []
		for w in range(wide_matrix):
			line_rnd.append(int(random() * 100))
			print(f"{line_rnd[w]:4d}", end="")  # убрать если не нужно построение матрицы
		matrix_rnd.append(line_rnd)
		print()
	return matrix_rnd


wide_matrix = 10  # Изменить ширину
hight_matrix = 8  # Изменить высоту
matrix_rnd = random_matrix(wide_matrix, hight_matrix)
# print(matrix_rnd)

for i in range(wide_matrix):
	print(" ---", end="")
print()

column_min = []
for w in range(wide_matrix):  # Цикл для поиска и вывода минимальных элементов в слолбцах матрицы
	column = []
	for h in range(hight_matrix):
		column.append(matrix_rnd[h][w])
	column_min_elem = sorted(column)[0]
	column_min.append(column_min_elem)
	print(f"{column_min_elem:4d}", end="")  # убрать если не нужен вывод строки с минимальными элементами
# print(column)

print(f"\n Максимальный элемент из минимальных элементов \n столбцов матрицы равен: {sorted(column_min)[-1]}")
