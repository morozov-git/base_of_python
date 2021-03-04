from time import perf_counter

src = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]

start = perf_counter()
nums = []
for i in range(1, len(src)):
	if src[i] > src[i-1]:
		nums.append(src[i])
print(nums, perf_counter() - start, type(nums))

# решение с помощью генератора
start = perf_counter()
nums_gen = (src[i] for i in range(1, len(src)) if src[i] > src[i-1])
print(list(nums_gen), perf_counter() - start, type(nums_gen))