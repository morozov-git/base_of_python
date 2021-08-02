# 4. Написать программу, которая генерирует в указанных пользователем границах:
# случайное целое число;
# случайное вещественное число;
# случайный символ.
# Для каждого из трех случаев пользователь задает свои границы диапазона.
# Например, если надо получить случайный символ от 'a' до 'f', то вводятся эти символы.
# Программа должна вывести на экран любой символ алфавита от 'a' до 'f' включительно.

import time
import string

d = string.ascii_uppercase

def random_elem(a,b): # Считаем случайное число и проверяем входит ли оно в заданный диапазон
	while True:
		if a == b:
			random_elem = a
		elif a < b:
			random_elem = (a) + ((time.time() * 100000) % (b))
		else:
			random_elem = (b) + ((time.time() * 100000) % (a))
		if (a <= b and a <= random_elem <= b) or (a > b and a >= random_elem >= b):
			return random_elem

def is_float(user_elem): # Проверяем через исключение вещественное число или нет
	try:
		float(user_elem)
		return True
	except ValueError:
		return False

while True: # Цикл для получения случайного элемента из заданного диапазона.
	user_elem = input("\nВведите через запятую два числа или две заглавных латинских\n"
						"буквы чтобы получить случайный элемент из заданного диппазона\n"
						"(для получения целого числа - введите целые числа, а для \n"
						"получения вещественноно числа - введите вещественные числа): ")
	user_elem = user_elem.split(',')
	if len(user_elem) == 2 and user_elem[0] in d and user_elem[1] in d:
		print(d[int(random_elem(d.index(user_elem[0]), d.index(user_elem[1])))])
		#break 			# Для получения только одного элемента убрать # перед break
	elif len(user_elem) == 2 and user_elem[0].isdecimal() == user_elem[1].isdecimal() == True:
		print(int(random_elem(int(user_elem[0]), int(user_elem[1]))))
		#break			# Для получения только одного элемента убрать # перед break
	elif len(user_elem) == 2 and is_float(user_elem[0]) == is_float(user_elem[1]) == True:
		print(random_elem(float(user_elem[0]), float(user_elem[1])))
		#break			# Для получения только одного элемента убрать # перед break

