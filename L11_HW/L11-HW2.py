class DivisionErrors(Exception):
	# def __init__(self, err):
	# 	self.err = err
	pass
def division(*args):
	x, y = args
	try:
		x = float(x)
		y = float(y)
		if y == 0:
			err = "division by zero"
			raise DivisionErrors(err)
		else:
			result = x / y
			print(f'{x} / {y} = {result:.4f}')
	except ValueError as err:
		print(f'wrong val: {err} ')
	except DivisionErrors as err:
		print(f'wrong val: {err} ')


division(5, 3)
division(5, 0)
division("ert", 3)
division(0, 3)
division(0, 0)