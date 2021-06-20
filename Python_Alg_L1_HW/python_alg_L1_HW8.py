# 8. Определить, является ли год, который ввел пользователем, високосным или невисокосным.

while True:
	year = input("\n""Введите год чтобы узнать високосный он или нет: ")
	if len(year) >= 1 and year.isdecimal() == True:
		year_4 = int(year) % 4
		year_100 = int(year) % 100
		year_400 = int(year) % 400
		if year_4 != 0 or (year_4 == year_100 == 0 and year_400 != 0):
			print(f"Год {year} - не високосный")
		else:
			print(f"Год {year} - високосный")
