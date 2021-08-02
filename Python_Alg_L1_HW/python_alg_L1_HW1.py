
# 1. Найти сумму и произведение цифр трехзначного числа, которое вводит пользователь.

while True:
	number = input("Ведите трех значное число: ")
	if len(number) == 3 and number.isdecimal() == True:
		sum_elem = int(number[0]) + int(number[1]) + int(number[2])
		mult_elem = int(number[0]) * int(number[1]) * int(number[2])
		break

print(f'Сумма цифр в числе = {sum_elem}, произведение цифр в числе = {mult_elem}')
