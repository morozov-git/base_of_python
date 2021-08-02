# 5. Пользователь вводит две буквы. Определить, на каких местах алфавита они стоят
# и сколько между ними находится букв.

import string
d = string.ascii_uppercase

while True:
	user_elem = input("\nВведите через запятую две заглавные латинские буквы: ")
	user_elem = user_elem.split(',')
	if len(user_elem) == 2 and user_elem[0] in d and user_elem[1] in d:
		print("\n"f"Буква: {user_elem[0]} находится на {(d.index(user_elem[0]) + 1)} месте алфавита,"
			  f"Буква: {user_elem[1]} находится на {(d.index(user_elem[1]) + 1)} месте алфавита.""\n")
	if user_elem[0] == user_elem[1]:
		print(f"Между ними букв: {d.index(user_elem[1]) - d.index(user_elem[0])}")
		break
	elif d.index(user_elem[1]) < d.index(user_elem[0]):
		print(f"Между ними букв: {d.index(user_elem[0]) - d.index(user_elem[1]) -1}")
		break
	else:
		print(f"Между ними букв: {d.index(user_elem[1]) - d.index(user_elem[0]) -1}")
		break
