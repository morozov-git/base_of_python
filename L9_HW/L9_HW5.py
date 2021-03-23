class Stationery:
	def __init__(self, t='title'):
		self.title = t

	def draw(self):
		print(f"Run {self.title} drawing!")

class Pencil(Stationery):
	def __init__(self, c='color'):
		self.title = 'pencil'
		self.color = c

	def draw(self):
		print(f"Start drawing with {self.color} {self.title}!")


class Pen(Stationery):
	def __init__(self, c='color'):
		self.title = 'pen'
		self.color = c

	def draw(self):
		print(f"Start drawing with {self.color} {self.title}!")


class Handle(Stationery):
	def __init__(self, c='color'):
		self.title = 'handle'
		self.color = c

	def draw(self):
		print(f"Start drawing with {self.color} {self.title}!")


b = Stationery('brush')
b.draw()
rp = Pencil('red')
rp.draw()
yp = Pen('yellow')
yp.draw()
oh = Handle('orange')
oh.draw()
oh = Handle()
oh.draw()
Handle.draw(Handle('green'))