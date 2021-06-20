# 3. По введенным пользователем координатам двух точек вывести уравнение прямой
# вида y=kx+b, проходящей через эти точки.

while True:
	coordinates = input("Введите координаты X и Y для двух точек через запятую: ")
	a = coordinates.split(',')
	if len(a) == 4 and a[0].isdecimal() == a[1].isdecimal() == a[2].isdecimal() == a[3].isdecimal() == True:
		a = [int(elem) for elem in a]
		if (a[2] - a[0]) != 0:
			k = (a[3] - a[1]) / (a[2] - a[0])
		else: k = (a[3] - a[1])
		b = a[1] - k * a[0]
		break
print(f"Уравнение прямой проходящей через точки с координатами:" "\n"
	  f"X1={a[0]}, Y1={a[1]}, X2={a[2]} и Y2={a[3]}:" "\n"
	  f"y=({k})x+({b})", sep="")
