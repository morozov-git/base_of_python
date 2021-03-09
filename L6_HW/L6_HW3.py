

with open("users.csv", "r", encoding="utf-8") as users:
	#users = list(map(lambda i: i.split(','), users.read().replace('\ufeff', '').splitlines()))
	users = list(map(lambda i: i, users.read().replace('\ufeff', '').splitlines()))
with open("hobbies.csv", "r", encoding="utf-8") as hobbies:
	hobbies = list(map(lambda i: i.split(','), hobbies.read().replace('\ufeff', '').splitlines()))

# # Для использования другого списка хобби
# with open("hobbies2.csv", "r", encoding="utf-8") as hobbies:
# 	hobbies = list(map(lambda i: i.split(','), hobbies.read().replace('\ufeff', '').splitlines()))

usr_hbs_dict = {}
# Заполнение словаря без проверкой длинны списков
# for u, h in zip(users, hobbies):
# 		usr_hbs_dict[u] = h

# Заполнение словаря с проверкой длинны списков
u_len = len(users)
h_len = len(hobbies)
while u_len >= 0: # and h_len >= 0
	if h_len > 0:
		usr_hbs_dict[users[len(users) - u_len]] = hobbies[len(hobbies) - h_len]
		u_len -= 1
		h_len -= 1
	if u_len > 0 and h_len <= 0:
		usr_hbs_dict[users[(len(users) - u_len)]] = [None]
		u_len -= 1
		h_len -= 1
	if u_len <= 0:
		# Закомментировать следующую строку если не нужно включать NONE когда список пользователей закончился, а список хобби еще нет
		#usr_hbs_dict[None] = hobbies[len(hobbies) - h_len]
		u_len -= 1
		h_len -= 1
	if u_len < -1:
		quit(1)


with open("usr_hbs.txt", "w", encoding="utf-8") as usr_hbs:
	for k, v in usr_hbs_dict.items():
		if v[0] != None:
			usr_hbs.write(f'{k} _ {",".join(v)}\n')
		else: usr_hbs.write(f'{k} _ {None}\n')
print(usr_hbs_dict)
#print(users, hobbies, sep='\n')
#print(hobbies)
