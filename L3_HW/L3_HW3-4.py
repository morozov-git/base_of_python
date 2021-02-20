employees = ['Иван','Мария', 'Петр', 'Илья', 'Алексей', 'Александр']
employees_name_surname = ["Иван Сергеев", "Инна Серова", "Петр Алексеев", "Павел Александров", "Илья Иванов", "Анна Савельева", "Алексей Серов", "Александр Сидоров"]

def sort_dict(args):
	"""сортировка словаря по ключам"""
	dict_sort = dict()
	keys_list = list(args.keys())
	keys_list.sort()
	for i in keys_list:
		dict_sort.setdefault(i, args[i])
	return dict_sort

def thesaurus(args):
	dict_em = dict()
	for name in employees:
		key = name[0]
		if key in dict_em:
			dict_em[key].append(name)
		else:
			dict_em[key] = [name]

	dict_sort = sort_dict(dict_em) #сортировка вынесена в функцию
	# #сортировка словаря по ключам
	# dict_sort = dict()
	# keys_list = list(dict_em.keys())
	# keys_list.sort()
	# for i in keys_list:
	# 	dict_sort.setdefault(i, dict_em[i])
	print(dict_sort)
	return dict_em #dict_sort  #если нужно выводить отсортированный словарь



def thesaurus_adv(args):
	surname_dict = {}
	for employee in employees_name_surname:
		key_name = employee[0]
		surname_ind = employee.rfind(" ")
		key_surname = employee[surname_ind+1:surname_ind+2]
		#print(key_name, surname_ind, key_surname)
		if key_surname in surname_dict:
			dic = surname_dict[key_surname] #вводим промежуточный словарь для работы с внутренними словарями
			if key_name in dic:
				dic[key_name].append(employee)
				surname_dict[key_surname] = dic
			else:
				dic[key_name] = [employee]
				surname_dict[key_surname] = dic
		else:
			surname_dict[key_surname] = {key_name: [employee]}

	dict_sort = sort_dict(surname_dict) #сортировка вынесена в функцию
	print(dict_sort)
	return surname_dict #dict_sort



employe_dict = thesaurus(employees)
print(employe_dict)


print(thesaurus_adv(employees_name_surname))













