class Cell:
	def __init__(self, *args):
		self.size = int(*args)

	def __add__(self, other):
		return Cell(self.size + other.size)

	def __sub__(self, other):
		if self.size > other.size:
			return Cell(self.size - other.size)
		else:
			return f"Клетка слишком маленькая"

	def __mul__(self, other):
		return Cell(self.size * other.size)

	def __floordiv__(self, other):
		return Cell(self.size // other.size)

	def __truediv__(self, other):
		return Cell(self.size / other.size)

	def make_order(self, row):
		cell_column = self.size // row
		cell_column_r = self.size % row
		cell_line = (f'{"*" * row}\n') * cell_column + f'{"*" * cell_column_r}'
		return f'Cell_make_order: \n{cell_line}\n\n'
	def __str__(self):
		return str(self.size)
	def __format__(self, format_spec):
		return f"{self.size:.2f}"


cell_1 = Cell(43)
cell_2 = Cell(23)
cell_3 = Cell(33)
cell_4 = cell_1 + cell_2 + cell_3
#cell_3 = cell_1 + cell_2
print(f"Сложение клеток 1, 2 и 3: {cell_4}")
print(f"Сложение клеток 1, 2 и 3: {cell_1 + cell_2 + cell_3}")
print(f"Вычитание клеток 1 и 2: {cell_1 - cell_2}")
print(f"Вычитание клеток 2 и 3: {cell_2 - cell_3}")
print(f"Умножение клеток 1, 2 и 3: {cell_1 * cell_2 * cell_3}")
print(f"Целочисленное деление клеток 1 и 2: {cell_1 // cell_2}")
print(f"Целочисленное деление клеток 3 и 1: {cell_3 // cell_1}")
cell_5 = cell_1 / cell_2
print(f"Деление клеток 1 и 2: {cell_1 / cell_2}")
print(cell_1.make_order(12))
print(cell_2.make_order(9))

