"""
1. Определение количества различных подстрок с использованием хэш-функции. Пусть дана строка S
длиной N, состоящая только из маленьких латинских букв. Требуется найти количество различных
подстрок в этой строке.
Примечание: в сумму не включаем пустую строку и строку целиком.
"""

from itertools import combinations
import hashlib

def input_str(): # функция для проверки вводимых данных
	while True:
		input_string = input(f"\nВведите строку для определения количества уникальных подстрок:\n").lower()
		# input_string = "hello world"
		if len(input_string) > 0:
			return input_string

def sub_hash_count(): # подсчет подстрок на основе их hash
	input_string = input_str()
	i = 1
	input_str_hash = set()
	while i < len(input_string):
		#print(*combinations(input_string, i))
		for elem in combinations(input_string, i):
			one_elem = tuple(elem)
			sub_string = "".join(map("".join, one_elem))
			#print(sub_string)
			if sub_string in input_string:
				#print(sub_string)
				input_str_hash.add(hashlib.sha1(sub_string.encode('utf-8')).hexdigest())
		i += 1
	#print(input_str_hash)
	return len(input_str_hash)


print(f"\nКоличество уникальных подстрок в введенной строке равно: {sub_hash_count()}")