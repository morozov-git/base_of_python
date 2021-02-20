rus_num = ['один', 'два', 'три', 'четыре', 'пять', 'шесть', 'семь', 'восемь', 'девять', 'десять']
eng_num = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
dict = list(zip(rus_num, eng_num))

def translate(number):
	for rus, eng in dict:
		if rus == (number).lower():
			return (eng).title()
			print(eng)
		elif eng == (number).lower():
			return (rus).title()
			print(rus)
	return 'Вы ввели неверное числительное.'


print(f'Ваш перевод: {translate(number=input("Введите числительное от 1 до 10 на Русском или Английском языке: "))}\n')
print(f'Ваш перевод: {translate(number=input("Введите числительное от 1 до 10 на Русском или Английском языке: "))}\n')
print(f'Ваш перевод: {translate(number=input("Введите числительное от 1 до 10 на Русском или Английском языке: "))}\n')


##Разнообразные варианты вывода-ввода значений

#number = input("Введите числительное от 1 до 10 на Русском или Английском языке: ").lower()

#print(f'\nВы ввели: {(number).title()}.', f'\nВаш перевод: {(translate(number)).title()}')
#print(translate(number = input("введите число")))
#print(translate(number = input("введите число").lower()))



