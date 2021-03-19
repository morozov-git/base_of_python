

def val_checker(func):
	def wrapper(*args):
		func(args)
		result = []
		#print(f'\n\t{func.__name__}({", ".join(map(str, args))})')
		for x in args:
			try:
				assert x > 0
				r = x ** 3
				result.append(r)
				print(f'\t{func.__name__}({x})___result = ({r})')
			except Exception:
				r = f'Error! Wrong val: {x}'
				result.append(r)
				print(f'\t{func.__name__}({x})___result = ({r})')
		return tuple(result)
	return wrapper



@val_checker
def calc_cube(*args):
	print(f'\n\tcalc_cube({", ".join(map(str, *args))})')
	return

calc_a = calc_cube(2, "sd", -6)
calc_b = calc_cube(3)
calc_c = calc_cube("dsf")
calc_c = calc_cube(4)
# print(calc_a)
# print(calc_b)
# print(calc_c)
print('\n')

