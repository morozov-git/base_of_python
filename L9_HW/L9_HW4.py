

class Car:
	def __init__(self, s='speed', c='color', n='name', p=False):
		self.speed = s
		self.color = c
		self.name = n
		self.is_police = p


	def go(self):
		print(f"Go-go! {self.name}!")

	# def go(self, speed):
	# 	print(f"Go-go! {self.name} with {speed} km/h!")

	def stop(self):
		print(f"{self.name} STOP!")

	def turn(self, direction):
		print(f"{self.name} go to {direction}!")

	def show_speed(self):
		#super().show_speed)
		#print(f"{self.name}")
		if self.speed > 40:
			if self.__class__ == TownCar:
				print(f"{self.name} go with {self.speed} km/h!\nSpeed limit is 60 km\h")
			elif self.__class__ == WorkCar:
				print(f"{self.name} go with {self.speed} km/h!\nSpeed limit is 40 km\h")
			else:
				print(f"{self.name} go with {self.speed} km/h!")


class TownCar(Car):
	def __init__(self, s, c, n, p):
		super().__init__(s, c, n, p)
		
	# def get_full_name(self):
	# 	return self.name, self.surname
	#
	# def get_total_incom(self):
	# 	total_incom = int(self._Worker__income["wage"]) + int(self._Worker__income["bonus"])
	# 	#print(total_incom)
	# 	return total_incom


class SportCar(Car):
	def __init__(self, s, c, n, p):
		super().__init__(s, c, n, p)


class WorkCar(Car):
	def __init__(self, s, c, n, p):
		super().__init__(s, c, n, p)


class PoliceCar(Car):
	def __init__(self, s, c, n, p):
		super().__init__(s, c, n, p)

	def is_police(self):
		if self.is_police == True:
			print('That is police car!')


bus = TownCar(65, 'red', 'Bus_767', False)
bus.show_speed()
tractor = WorkCar(65, 'green', 'FORD_agrimotor', True)
tractor.show_speed()
tractor.turn('right')
#tractor = PoliceCar(65, 'green', 'FORD_agrimotor', True)
tractor.show_speed()
tractor.stop()
tractor.go()
police = PoliceCar(75, 'black', 'Crysler', True)
print(police.name, police.color)
police.show_speed()
print(police.is_police)
print(police.name)
PoliceCar.is_police(police)