# 9. Среди натуральных чисел, которые были введены, найти наибольшее по сумме цифр.
# Вывести на экран это число и сумму его цифр.


# запрашиваем у пользователя натуральные числа и отбираем
# лишнее если были допущены ошибки при вводе чисел
def natural_numbers():
	while True:
		numbers = input("\nВведите через запятую натуральные числа:\n")
		numbers = numbers.split(",")
		nat_num = []
		for elem in numbers:
			if elem.isdigit() == True:
				nat_num.append(int(elem))
		return nat_num

def natural_numbers_rnd(): # функция для формирования списка из 10 случайных натуральных чисел в диапазоне 100-10000
	import random as rnd
	nat_num = []
	for i in range(10):
		nat_num.append(rnd.randint(100, 10000))
	return nat_num


def sum_digit(n): # функция для нахождения суммы цифр натурального числа
	sum_digit = 0
	for i in str(n):
		sum_digit = sum_digit + int(i)
	return sum_digit


sum_and_digits = [] # список для пар: (число, сумма цифр)
for i in natural_numbers(): # для формирования спаска случайными значениями заменить natural_numbers() на natural_numbers_rnd()
	sum_and_digits.append((i, sum_digit(i))) # формируем список
	#print(sum_and_digits)
sum_and_digits.sort(key=lambda i: i[1]) # сортируем полученный список по сумме цифр(по значениям)
#print(sum_and_digits)
print(f"Максимальная сумма цифр: {sum_and_digits[-1][1]}\n"
	  f"получилась у натурального числа: {sum_and_digits[-1][0]}")