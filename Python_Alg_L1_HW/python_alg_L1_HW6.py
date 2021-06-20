# 6. Пользователь вводит номер буквы в алфавите. Определить, какая это буква.

import string

d = string.ascii_uppercase

while True:
	user_elem = input("\nВведите номер буквы латинского алфавита: ")
	if user_elem.isdigit() == True and 0 <= int(user_elem) <= 26:
		print("\n"f"Номеру: {user_elem} соответствует буква: {(d[int(user_elem) - 1])} в латинском алфавите")
		break
	else:
		print("\n"f"Вы ввели неправильный номер. Попробуйте еще раз.")
