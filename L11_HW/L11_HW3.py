class MyErrors(Exception):
	# def __init__(self, err):
	# 	self.Exception = err
	pass

def create_list():
	list_num = []
	while True:
		i = input("Введите число для заполнения списка или stop для завершения:")
		try:
			MyErrors(Exception)
			if i in ("stop", "STOP", "Stop", "Стоп", "СТОП", "стоп"):
				err = "STOP"
				raise MyErrors(err)
			if i.isdigit() == True:
				i = int(i)
				list_num.append(i)
			else:
				try:
					i = float(i)
					list_num.append(i)
				except Exception:
					err = "Вы ввели не число!"
					print(f"Ошибка: {err}")
		except MyErrors:
			print(f"Программа остановлена!")
			print(f'Список чисел:\n{list_num}')
			return list_num



create_list()
