# 2. Посчитать четные и нечетные цифры введенного натурального числа.
# Например, если введено число 34560, то у него 3 четные цифры
# (4, 6 и 0) и 2 нечетные (3 и 5).

while True:
	number = input("\nВведите натуральное число:\n")
	even_odd = [0,0]
	if number.isdigit() == True:
		for i in number:
			if int(i) % 2 == 0:
				even_odd[0] += 1
			else:
				even_odd[1] += 1
		print(f"В числе {number} четных цифр - {even_odd[0]}, а нечетных цифр - {even_odd[1]}")
		break