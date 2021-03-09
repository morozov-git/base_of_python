from sys import argv
#import decimal


with open("bakery.csv", "a", encoding="utf-8") as bakery:
	bakery = bakery.write(f"{argv[1]}\n")



if __name__ == '__main__':
	print('Сумма продаж: ', argv[1], ' записана в bakery.csv', sep="")

