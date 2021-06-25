# 6. В программе генерируется случайное целое число от 0 до 100. Пользователь должен его
# отгадать не более чем за 10 попыток. После каждой неудачной попытки должно сообщаться
# больше или меньше введенное пользователем число, чем то, что загадано. Если за 10 попыток
# число не отгадано, то вывести загаданное число.

from random import randrange

def user_num(param):
	if param == 0:
		while True:
			user_num = input("\nПопробуйте отгадать случаиное число от 0 до 100.\nУвас 10 попыток."
							 " Введите свой ответ:\n")
			if user_num.isdigit() == True:
				return int(user_num)
	if param == 1:
		while True:
			user_num = input("Попробуйте еще раз. Введите свой ответ:\n")
			if user_num.isdigit() == True:
				return int(user_num)


rnd_num = randrange(101)
user_try = 10
u_number = user_num(0)
while user_try > 1:
	if u_number not in range(0, 100):
		user_try -= 1
		print(f"Вы ввели слишком большое число. У вас осталось попыток: {user_try}")
		u_number = user_num(1)
		continue
	if u_number in range(0, 100) and u_number > rnd_num:
		user_try -= 1
		print(f"Ваше число больше чем загаданное. У вас осталось {user_try} попыток.")
		u_number = user_num(1)
		continue
	if u_number in range(0, 100) and u_number < rnd_num:
		user_try -= 1
		print(f"Ваше число меньше чем загаданное. У вас осталось {user_try} попыток.")
		u_number = user_num(1)
		continue
	if u_number in range(0, 100) and u_number == rnd_num:
		print(f"Поздравляю вы угадали число {rnd_num} всего за {10 - user_try} попыток!")
		break
if user_try == 1:
	print(f"Сожалею, вы проиграли. Было загадоно угадали число {rnd_num}.")