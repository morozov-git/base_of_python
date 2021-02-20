nouns = ["автомобиль", "лес", "огонь", "город", "дом"]
adverbs = ["сегодня", "вчера", "завтра", "позавчера", "ночью"]
adjectives = ["веселый", "яркий", "зеленый", "утопичный", "мягкий"]


def jokes(a):
	"""Random Jokes Func"""
	jokes_list = []
	while a>0:
		from random import choice
		jokes_list.append(choice(nouns) + " " + choice(adverbs) + " " + choice(adjectives))
		a -= 1
	return jokes_list

def jokes_flag(a, b):
	"""Random Jokes Func with Flag"""
	jokes_list = []
	b = (b).lower()
	while a>0:
		from random import choice
		noun = choice(nouns)
		adv = choice(adverbs)
		adj = choice(adjectives)
		jokes_list.append(noun + " " + adj + " " + adj)
		if "y" == b:
			nouns.remove(noun)
			adverbs.remove(adv)
			adjectives.remove(adj)
		a -= 1
	return jokes_list




print(jokes(int(input("Сколько шуток вы хотите? Введите число: "))))

#print(jokes_flag(3, "n"))
print(jokes_flag(len(nouns), input("Введите Y если хотите чтобы все шутки были разными: ")))