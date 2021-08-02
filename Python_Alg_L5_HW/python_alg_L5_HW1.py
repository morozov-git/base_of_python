"""
1. Пользователь вводит данные о количестве предприятий, их наименования и прибыль
за 4 квартала (т.е. 4 отдельных числа) для каждого предприятия.. Программа должна
определить среднюю прибыль (за год для всех предприятий) и вывести наименования
предприятий, чья прибыль выше среднего и отдельно вывести наименования предприятий,
чья прибыль ниже среднего.
"""

import collections

def is_float(firm): # Проверяем через исключение введено число или нет
	try:
		float(firm)
		return True
	except ValueError:
		return False

def input_firm(n): # функция для проверки вводимых данных по предриятиям и подсчета прибыли за год
	while True:
		firm = input(f"\nВведите через запятую название предприятия {n+1} и прибыль за каждый из 4-х кварталов:\n")
		firm = firm.split(",")
		if len(firm) == 5 and is_float(firm[1]) == is_float(firm[2]) == is_float(firm[3]) == is_float(firm[4]) == True:
			firm.append(0)
			for kv in range(1, 5):
				firm[kv] = float(firm[kv])
				firm[-1] += firm[kv]
			return firm

firms = []
columns = ["name", "kv_1", "kv_2", "kv_3", "kv_4", "year"]
firm = collections.namedtuple("Firm", columns)
n = 5 # int(input("Количество пердприятий: "))
sum_year = 0
for i in range(n): # формируем список со всеми данными по предприятиям и считаем общую прибыль
	firms.append(firm(*input_firm(i)))
	sum_year += firms[i].year
	#print(firms[i].name)

average_year = sum_year / n
print(f"\nСредняя прибыль за год по всем предприятиям: {average_year}.")
print(f"Пердприятия с прибылью выше средней:", end=" ")
for firm in firms:
	if firm.year > average_year:
		print(firm.name, end=", ")
print(f"\nПердприятия с прибылью ниже средней:", end=" ")
for firm in firms:
	if firm.year < average_year:
		print(firm.name, end=", ")


