# 8. Посчитать, сколько раз встречается определенная цифра в введенной
# последовательности чисел. Количество вводимых чисел и цифра, которую
# необходимо посчитать, задаются вводом с клавиатуры.

while True:
	data = input("\nВведите через запятую последовательность чисел и цифру, которую нужно посчитать:\n")
	data = data.split(",")
	if len(data) == 2 and data[0].isdigit() == data[1].isdigit() == True:
		user_digit = data[1]
		#user_chain = data[0].split("")
		count = 0
		for elem in data[0]:
			if elem == user_digit:
				count += 1
	print(f"Вы ввели последовательность:{data[0]}\nЦифра {data[1]} встречается в ней {count} раз.")
	break
