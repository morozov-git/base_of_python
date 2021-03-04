

def nums_gen(n):
	for nums in range(n+1):
		if nums % 2 == 1:
			yield nums


nums = nums_gen(int(input("Введите количество чисел: ")))
#nums = nums_gen(23)
print(next(nums), next(nums), next(nums), next(nums))

print(type(nums), *nums)


#n = 23
n = int(input("Введите количество чисел: "))

nums = (num for num in range(n+1) if num % 2 == 1)
print(next(nums), next(nums), next(nums), next(nums))
print(type(nums), *nums)


