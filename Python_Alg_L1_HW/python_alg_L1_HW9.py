# 9. Вводятся три разных числа. Найти, какое из них является средним
# (больше одного, но меньше другого).

while True:
	numbers = input("Введите через запятую три разных целых числа: ")
	a = numbers.split(',')
	if len(a) == 3 and a[0].isdecimal() == a[1].isdecimal() == a[2].isdecimal() == True:
		a, b, c = int(a[0]), int(a[1]), int(a[2])
		if a < b:
			if a > c:
				print(f"Среднее число: {a}")
				break
			elif b > c:
				print(f"Среднее число: {c}")
				break
			else:
				print(f"Среднее число: {b}")
				break
		elif b > c:
			print(f"Среднее число: {b}")
			break
		elif a < c:
			print(f"Среднее число: {a}")
			break
		else:
			print(f"Среднее число: {c}")
			break


# другой вариант немного облегченный

# while True:
# 	numbers = input("Введите через запятую три разных целых числа: ")
# 	a = numbers.split(',')
# 	if len(a) == 3 and a[0].isdecimal() == a[1].isdecimal() == a[2].isdecimal() == True:
# 		a, b, c = int(a[0]), int(a[1]), int(a[2])
# 		if (a < b and a > c) or (a < c and a > b):
# 			print(f"Среднее число: {a}")
# 			break
# 		elif (b < a and b > c) or (b < c and b > a):
# 			print(f"Среднее число: {b}")
# 			break
# 		else:
# 			print(f"Среднее число: {c}")
# 			break