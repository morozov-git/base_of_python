"""
1. Подсчитать, сколько было выделено памяти под переменные в ранее разработанных программах в
рамках первых трех уроков. Проанализировать результат и определить программы с наиболее эффективным
использованием памяти.
Примечание: Для анализа возьмите любые 1-3 ваших программы или несколько вариантов кода для одной
и той же задачи. Результаты анализа вставьте в виде комментариев к коду. Также укажите в комментариях
версию Python и разрядность вашей ОС.
"""

# Задача из 4-го урока
# 2. Написать два алгоритма нахождения i-го по счёту простого числа.
# Без использования «Решета Эратосфена»;
# Используя алгоритм «Решето Эратосфена»
# Примечание ко всему домашнему заданию: Проанализировать скорость и сложность алгоритмов.
# Результаты анализа сохранить в виде комментариев в файле с кодом.

import timeit
import cProfile
import gc
import sys

# def number():
# 	while True:
# 		number = input("\nВведите номер простово числа:\n")
# 		if number.isdigit() == True:
# 			return int(number)
#gc.collect()
#gc.disable()
gc.enable()
i = 100
# def prime_numbers(i):
prime_numbers = [2]
prime_number = 3
while len(prime_numbers) < i:
	prime_flag = True
	for elem in prime_numbers:
		number = prime_number % elem
		if number == 0:
			prime_flag = False
			break
	if prime_flag == True:
		prime_numbers.append(prime_number)
	prime_number += 2
	#print(*prime_numbers)
	# print(gc.get_stats())
	# print(gc.get_count())
	# return prime_numbers[-1]
print(f"\nПростые числа, метод без решета Эратосфена")
print(f"Простое число под номером {i} равно: {prime_numbers[-1]}")
print("\n", gc.get_stats())
print(gc.get_count())
#print(gc.get_objects())
print(sys.getrefcount(prime_numbers))
print(sys.getsizeof(prime_numbers))

# print(f"\n")


#gc.collect()
i = 100
# def eratostene_prime_numbers(i):
prime_numbers = [0, 0, 1]
ind_number = 3
count_prime_numbers = 1
while count_prime_numbers < i:
	prime_numbers.extend([0, 0])
	for ind in range(3, len(prime_numbers)-1, 2):
		number = ind_number % ind
		if number == 0:
			if ind_number == ind:
				prime_numbers[ind] = 1
				count_prime_numbers += 1
				break
			else:
				break
	ind_number += 2
	#print(*prime_numbers)
	#print(prime_numbers.index(1, -5, -1))
	# print(prime_numbers.count(1))
	# print(gc.get_stats())
	# print(gc.get_count())
	# return prime_numbers.index(1, -5, -1)


print(f"\nПростые числа, метод c решетом Эратосфена")
print(f"Простое число под номером {i} равно: {prime_numbers.index(1, -5, -1)}")
print("\n", gc.get_stats())
print(gc.get_count())
print(sys.getrefcount(prime_numbers))
print(sys.getsizeof(prime_numbers))
print(f"\n")



"""
Для примера решил взять задачу из 4-го урока по поиски i-го по счету простого числа двумя методами.
Как мы видим из двух примеров по поиску 10-го и 100-го простого числа оба алгоритма храният одинаковое 
количество объектов в двух покалениях (290 - в первом поколении и 10 - во втором поколении)
Самый большой объем памяти для каждого из этих алгоритмов занимает список простых чисел.
Для варианта когда нужно найти 10-е простое число - эти списки отличаются на 128 байт, приблизительно в 1,7 раза,
а когда нам нужно найто 100-е простое число здесь ситуация очень сильно меняется в пользу алгоритма без решета 
Эратосфена. 
Объем потребляемой памяти в алгоритме с решетом Эратосфина при нахождении 100 простого числа в пять раз больше 
чем в простом алгоритме, так он еще и быстрее увеличивается с ростом вычислений (5 раз - просой алгоритм против 
15 раз алгоритм с решетом Эратосфена)



Простые числа, метод без решета Эратосфена
Простое число под номером 10 равно: 29
 [{'collections': 10, 'collected': 0, 'uncollectable': 0}, 
 	{'collections': 0, 'collected': 0, 'uncollectable': 0}, 
 	{'collections': 0, 'collected': 0, 'uncollectable': 0}]
(290, 10, 0)
2
184

Простые числа, метод c решетом Эратосфена
Простое число под номером 10 равно: 29
 [{'collections': 10, 'collected': 0, 'uncollectable': 0}, 
 	{'collections': 0, 'collected': 0, 'uncollectable': 0}, 
 	{'collections': 0, 'collected': 0, 'uncollectable': 0}]
(290, 10, 0)
2
312


Простые числа, метод без решета Эратосфена
Простое число под номером 100 равно: 541
[{'collections': 10, 'collected': 0, 'uncollectable': 0}, 
	{'collections': 0, 'collected': 0, 'uncollectable': 0}, 
	{'collections': 0, 'collected': 0, 'uncollectable': 0}]
(290, 10, 0)
2
920

Простые числа, метод c решетом Эратосфена
Простое число под номером 100 равно: 541
[{'collections': 10, 'collected': 0, 'uncollectable': 0}, 
	{'collections': 0, 'collected': 0, 'uncollectable': 0}, 
	{'collections': 0, 'collected': 0, 'uncollectable': 0}]
(290, 10, 0)
2
4792
"""



#i = 1000
#i = number()
# print(f"Простое число под номером {i} равно: {prime_numbers(i)}")
# print(f"Простое число под номером {i} по алгоритму Эратосфена равно: {eratostene_prime_numbers(i)}")


# print(f"\nПростое число под номером 10 равно: {prime_numbers(10)}")
# print("Время выполнения:", timeit.timeit('prime_numbers(10)', 'from __main__ import prime_numbers', number=1000))
# print(gc.get_stats())
# print(gc.get_count())
#
# print(f"\nПростое число под номером 10 (Решето Эратосфена) равно: {eratostene_prime_numbers(10)}")
# print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(10)', 'from __main__ import eratostene_prime_numbers', number=1000))
# print(gc.get_stats())
# print(gc.get_count())


# print(f"\nПростое число под номером 100 равно: {prime_numbers(100)}")
# print("Время выполнения:", timeit.timeit('prime_numbers(100)', 'from __main__ import prime_numbers', number=1000))
# print(f"\nПростое число под номером 100 (Решето Эратосфена) равно: {eratostene_prime_numbers(100)}")
# print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(100)', 'from __main__ import eratostene_prime_numbers', number=1000))

# cProfile.run('prime_numbers(10)')
# cProfile.run('prime_numbers(100)')
# cProfile.run('eratostene_prime_numbers(10)')
# cProfile.run('eratostene_prime_numbers(100)')

