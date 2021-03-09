from sys import argv

#usr_hbs_dict = {} # Если файлы очень большие словарь можно не формировать
with open(str(argv[1]), "r", encoding="utf-8") as users:
	with open(str(argv[2]), "r", encoding="utf-8") as hobbies:
		with open(str(argv[3]), "w", encoding="utf-8") as usr_hbs:
			for line in users:
				usr = tuple(line.replace('\ufeff', '').replace('\n', '').split(','))
				hbs = list(hobbies.readline().replace('\ufeff', '').replace('\n', '').split(','))
				if hbs == ['']:
					hbs = [None]
				#usr_hbs_dict[usr] = hbs # Если файлы очень большие словарь можно не формировать
				usr_hbs.write(f'{usr} : {hbs}\n')
				print(usr, hbs)

if __name__ == '__main__':
	print('END')
	print(argv)

