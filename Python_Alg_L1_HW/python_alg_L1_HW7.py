# 7. По длинам трех отрезков, введенных пользователем, определить возможность
# существования треугольника, составленного из этих отрезков. Если такой треугольник
# существует, то определить, является ли он разносторонним, равнобедренным или равносторонним.

def is_float(user_elem): # Проверяем через исключение введено число или нет
	try:
		for elem in user_elem:
			float(elem)
		return True
	except ValueError:
		return False


while True:
	user_elem = input("\nВведите через запятую длину каждой стороны треугольника:\n")
	user_elem = user_elem.split(',')
	if len(user_elem) == 3 and is_float(user_elem) == True:
		a, b, c = float(user_elem[0]), float(user_elem[1]), float(user_elem[2])
		if a + b > c and b + c > a and a + c > b:
			if a != b != c:
				print(f"Треугольник со сторонами: {a}, {b}, {c} - существует""\n"
					  f"и является разносторонним")
				break
			elif a == b == c:
				print(f"Треугольник со сторонами: {a}, {b}, {c} - существует""\n"
					  f"и является равносторонним")
				break
			else:
				print(f"Треугольник со сторонами: {a}, {b}, {c} - существует""\n"
					  f"и является равнобедренным")
				break
		else:
			print(f"Треугольник со сторонами: {a}, {b}, {c} - не существует")
			break
