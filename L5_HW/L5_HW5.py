from time import perf_counter

src = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]

start = perf_counter()
unique_src = []
for i in range(len(src)):
	if src.count(src[i]) == 1:
		unique_src.append(src[i])
print(unique_src, perf_counter() - start)


start = perf_counter()
unique_list_src = [element for element in src if src.count(element) == 1]
print(unique_list_src, perf_counter() - start)
