class ComplexNumber:
	def __init__(self, *args):
		self.n = list(args)


	def __mul__(self, other):
		mul = [*[self.n[i] * other.n[i] - self.n[i+1] * other.n[i+1] for i in range(len(self.n)-1)], *[self.n[i+1] * other.n[i] + self.n[i] * other.n[i+1] for i in range(len(self.n)-1)]]
		#mul = [(a * c - b * d) and (b * c + a * d) for a, b in zip(self.n) and for c, d in zip(other.n)]
		#mul = [(a * c - b * d) and (b * c + a * d) for [a, b], [c, d] in zip(self.n, other.n)]
		# print(mul)
		# print(f'({mul[0]})+({mul[1]})i')
		return f'({mul[0]})+({mul[1]})i'
		#return ComplexNumber(*(mul))

	def __add__(self, other):
		sum = [i_1 + i_2 for i_1, i_2 in zip(self.n, other.n)]
		# self.n[0] = self.n[0] + other.n[0]
		# self.n[1] = self.n[1] + other.n[1]
		# print(self.n)
		# print(f'({sum[0]})+({sum[1]})i')
		# print(sum)
		return f'({sum[0]})+({sum[1]})i'
		#return ComplexNumber(*(sum))


n1 = ComplexNumber(2, 4)
n2 = ComplexNumber(5, 6)
n4 = ComplexNumber(-2, -7)
n3 = n1 + n2
print(n3) #Как получить значения?
# n5 = n1 + n2 + n4
# print(n5) #Как получить значения?
print(f"Сумма комплексных чисел n1, n2: {n1 + n2}")
print(f"Сумма комплексных чисел n1, n4: {n1 + n4}")
#print(f"Сумма комплексных чисел n1, n2 и n4: {n1 + n2 + n4}")
print(f"Произведение комплексных чисел n1 и n2: {n1 * n2}")
print(f"Произведение комплексных чисел n1 и n4: {n1 * n4}")
#print(f"Произведение комплексных чисел n1, n2 и n4: {n1 * n2 * n4}")
# #cell_3 = cell_1 + cell_2
# print(f"Сложение клеток 1, 2 и 3: {cell_4}")
# print(f"Сложение клеток 1, 2 и 3: {cell_1 + cell_2 + cell_3}")