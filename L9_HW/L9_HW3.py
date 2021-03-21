

class Worker:
	def __init__(self, n='name', s='surname', p='position', i={"wage": 100, "bonus": 50}):
		self.name = n
		self.surname = s
		self.position = p
		self.__income = i
		# i["wage"] = 100
		# i["bonus"] = 50

class Position(Worker):
	def __init__(self, n, s, p, i):
		super().__init__(n, s, p, i)

	def get_full_name(self):
		return self.name, self.surname

	def get_total_incom(self):
		total_incom = int(self._Worker__income["wage"]) + int(self._Worker__income["bonus"])
		#print(total_incom)
		return total_incom



worker_1 = Position('Ivan', 'Petrov', 'Builder', {"wage": 150, "bonus": 30})
print(worker_1.name, worker_1.surname, worker_1.position, worker_1._Worker__income)
print('Full name: ', Position.get_full_name(worker_1))
print('Total income: ', Position.get_total_incom(worker_1))
worker_2 = Position('Nikolay', 'Zaharov', 'Driver', {"wage": 120, "bonus": 20})
print(worker_1.name, worker_1.surname, worker_2.position, worker_1._Worker__income)
print('Full name: ', Position.get_full_name(worker_2))
print('Total income: ', Position.get_total_incom(worker_2))

