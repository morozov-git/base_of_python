# 4. Найти сумму n элементов следующего ряда чисел: 1 -0.5 0.25 -0.125 ...
# Количество элементов (n) вводится с клавиатуры.

def sum_elem(number):
	print(f'function sum_elem call with {number = }')
	#print(f"{(1 / -2 ** (number - 1))*(-1)}") # не могу понять куда пропадает "-" при вычислении
	if number <= 1:
		return number
	return 1 + (1/-2 * sum_elem(number-1))

while True:
	number = input("\nВведите количество элементов n:\n")
	if number.isdigit() == True:
		print(f"Сумма элементов последовательности равна: {sum_elem(int(number))}")
	#	print(f"{1 / (-2 ** (int(number) - 1))}") # не могу понять куда пропадает "-" при вычислении
		break
