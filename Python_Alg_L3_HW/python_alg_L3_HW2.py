# 2. Во втором массиве сохранить индексы четных элементов первого массива.
# Например, если дан массив со значениями 8, 3, 15, 6, 4, 2, то во второй
# массив надо заполнить значениями 1, 4, 5, 6 (или 0, 3, 4, 5 - если индексация
# начинается с нуля), т.к. именно в этих позициях первого массива стоят четные числа.

user_list = [8, 3, 15, 6, 4, 2]
index_list = []
for i in user_list:
	if i % 2 == 0:
		index_list.append(user_list.index(i))
print(f"\nИндексы четных элементов массива user_list:", *index_list)