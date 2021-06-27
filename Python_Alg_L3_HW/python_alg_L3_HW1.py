# 1. В диапазоне натуральных чисел от 2 до 99 определить, сколько из них
# кратны каждому из чисел в диапазоне от 2 до 9.


for i in range(2, 10):
	# print(i)
	numbers = (i, [])
	for k in range(2, 100):
		if k % i == 0:
			numbers[1].append(k)
	# print(numbers)
	print(f"\n В диапазоне от 2 до 99 чисел кратных {i} - {len(numbers[1])}:\n", *numbers[1])
