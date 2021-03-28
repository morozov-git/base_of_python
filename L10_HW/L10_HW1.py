class Matrix:
	def __init__(self, matrix):
		self.matrix = matrix


	def __add__(self, other):
		return Matrix([cell_1 + cell_2 for cell_1, cell_2 in zip(row_1, row_2)] for row_1, row_2 in zip(self.matrix, other.matrix))


	def __str__(self):
		#n = self.matrix
		line = ""
		#print(n)
		for i in self.matrix:
			line +=f"|{'  '.join(map(str, i))}|\n"
			#print(line)
		return line



matrix_1 = Matrix([[1, 2], [3, 4], [5, 6]])
matrix_2 = Matrix([[9, 8], [9, 10], [11, 16]])
matrix_3 = Matrix([[7, 8], [9, 10], [11, 12]])
print(matrix_1 + matrix_2 + matrix_3)
print(matrix_1)

matrix_1 = Matrix([[1, 2, 9], [3, 4, 7], [5, 6, -9.8]])
matrix_2 = Matrix([[9, 8, 9], [9, 10, 9], [11, 12, -8]])
print(matrix_1 + matrix_2)

matrix_1 = Matrix([[1, 2, 3, 4], [5, 6, -9, 8]])
matrix_2 = Matrix([[9, 8, 10, 9], [11, 12, -8, 23]])
print(matrix_1 + matrix_2)
print(matrix_1)