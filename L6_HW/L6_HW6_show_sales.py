from sys import argv
#import decimal

#argv = [1, 3, 10]
#argv = [1, 3]
#argv = [1]
#argv = []
argv = [int(item) if item.isdigit() else item for item in argv]
with open("bakery.csv", "r", encoding="utf-8") as bakery:
	if len(argv) == 1:
		print(bakery.read(), end="")
	if len(argv) == 2:
		i = 1
		while i != argv[1]:
			bakery.readline()
			i += 1
		print(bakery.read(), end="")
	if len(argv) == 3:
		i = 1
		l = argv[2] - argv[1] + 1
		while i != argv[1]:
			bakery.readline()
			i += 1
		while l != 0:
			print(bakery.readline(), end="")
			l -= 1


if __name__ == '__main__':
	#print('Сумма продаж: ', argv[1], ' записана в bakery.csv', sep="")
	#print(bakery.readline())
	print('END')
	print(argv)

