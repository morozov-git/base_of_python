

def nums_gen(n):
	for nums in range(n+1):
		if nums % 2 == 1:
			yield nums

if __name__ == '__main__':
	nums = nums_gen(int(input("Введите количество чисел: ")))
	#nums = nums_gen(23)
	print(next(nums), next(nums), next(nums), next(nums))
	print(type(nums), *nums)



# Вариант без yield

def nums_gen2(n):
	nums = (num for num in range(n+1) if num % 2 == 1)
	return nums

# print(next(nums), next(nums), next(nums), next(nums))
# print(type(nums), *nums)
if __name__ == '__main__':
	n = 23
	# n = int(input("Введите количество чисел: "))
	#print(next(nums), next(nums), next(nums), next(nums))
	print(type(nums_gen(n)), *nums_gen(n))

