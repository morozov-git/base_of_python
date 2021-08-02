# 2. Написать два алгоритма нахождения i-го по счёту простого числа.
# Без использования «Решета Эратосфена»;
# Используя алгоритм «Решето Эратосфена»
# Примечание ко всему домашнему заданию: Проанализировать скорость и сложность алгоритмов.
# Результаты анализа сохранить в виде комментариев в файле с кодом.

import timeit
import cProfile


def number():
	while True:
		number = input("\nВведите номер простово числа:\n")
		if number.isdigit() == True:
			return int(number)


def prime_numbers(i):
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
	return prime_numbers[-1]


def eratostene_prime_numbers(i):
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
	return prime_numbers.index(1, -5, -1)


#i = 1000
#i = number()
# print(f"Простое число под номером {i} равно: {prime_numbers(i)}")
# print(f"Простое число под номером {i} по алгоритму Эратосфена равно: {eratostene_prime_numbers(i)}")


print(f"\nПростое число под номером 10 равно: {prime_numbers(10)}")
print("Время выполнения:", timeit.timeit('prime_numbers(10)', 'from __main__ import prime_numbers', number=1000))
print(f"\nПростое число под номером 10 (Решето Эратосфена) равно: {eratostene_prime_numbers(10)}")
print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(10)', 'from __main__ import eratostene_prime_numbers', number=1000))

print(f"\nПростое число под номером 100 равно: {prime_numbers(100)}")
print("Время выполнения:", timeit.timeit('prime_numbers(100)', 'from __main__ import prime_numbers', number=1000))
print(f"\nПростое число под номером 100 (Решето Эратосфена) равно: {eratostene_prime_numbers(100)}")
print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(100)', 'from __main__ import eratostene_prime_numbers', number=1000))

print(f"\nПростое число под номером 1000 равно: {prime_numbers(1000)}")
print("Время выполнения:", timeit.timeit('prime_numbers(1000)', 'from __main__ import prime_numbers', number=1000))
print(f"\nПростое число под номером 1000 (Решето Эратосфена) равно: {eratostene_prime_numbers(1000)}")
print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(1000)', 'from __main__ import eratostene_prime_numbers', number=1000))

# print(f"\nПростое число под номером 10000 равно: {prime_numbers(10000)}")
# print("Время выполнения:", timeit.timeit('prime_numbers(10000)', 'from __main__ import prime_numbers', number=100))
# print(f"\nПростое число под номером 10000 (Решето Эратосфена) равно: {eratostene_prime_numbers(10000)}")
# print("Время выполнения (Решето Эратосфена):", timeit.timeit('eratostene_prime_numbers(10000)', 'from __main__ import eratostene_prime_numbers', number=100))

cProfile.run('prime_numbers(10)')
cProfile.run('prime_numbers(100)')
cProfile.run('prime_numbers(1000)')
cProfile.run('eratostene_prime_numbers(10)')
cProfile.run('eratostene_prime_numbers(100)')
cProfile.run('eratostene_prime_numbers(1000)')



"""

Сложность обоих алгоритмов приблизительно равна О(f(n^2)) так как оба алгоритма имеют цикл в цикле.
Но время выполнения различно и отличается в несколько раз в пользу первого аглоритма (без решета Эратосфена).
Это связано в первую очередь с тем, что в алгоритме Эратосфена присутствует список с большин количетсвом 
не нужных элементов (отсеянных чисел) и соответственно при переборе делителей выполняются лишние операции.

Простое число под номером 10 равно: 29
Время выполнения: 0.009029985

Простое число под номером 10 (Решето Эратосфена) равно: 29
Время выполнения (Решето Эратосфена): 0.024381948999999993

Простое число под номером 100 равно: 541
Время выполнения: 0.422119501

Простое число под номером 100 (Решето Эратосфена) равно: 541
Время выполнения (Решето Эратосфена): 1.0718837099999998

Простое число под номером 1000 равно: 7919
Время выполнения: 38.899594002

Простое число под номером 1000 (Решето Эратосфена) равно: 7919
Время выполнения (Решето Эратосфена): 179.623937435

Простое число под номером 10000 равно: 104729
Время выполнения: 421.119668391

Простое число под номером 10000 (Решето Эратосфена) равно: 104729
Время выполнения (Решето Эратосфена): 3282.25751603



		28 function calls in 0.000 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.000    0.000 <string>:1(<module>)
        1    0.000    0.000    0.000    0.000 python_alg_L4_HW.py:94(prime_numbers)
        1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
       15    0.000    0.000    0.000    0.000 {built-in method builtins.len}
        9    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


         374 function calls in 0.000 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.000    0.000 <string>:1(<module>)
        1    0.000    0.000    0.000    0.000 python_alg_L4_HW.py:94(prime_numbers)
        1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
      271    0.000    0.000    0.000    0.000 {built-in method builtins.len}
       99    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


         4963 function calls in 0.048 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.048    0.048 <string>:1(<module>)
        1    0.047    0.047    0.048    0.048 python_alg_L4_HW.py:94(prime_numbers)
        1    0.000    0.000    0.048    0.048 {built-in method builtins.exec}
     3960    0.000    0.000    0.000    0.000 {built-in method builtins.len}
      999    0.000    0.000    0.000    0.000 {method 'append' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}


         33 function calls in 0.000 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.000    0.000 <string>:1(<module>)
        1    0.000    0.000    0.000    0.000 python_alg_L4_HW.py:111(eratostene_prime_numbers)
        1    0.000    0.000    0.000    0.000 {built-in method builtins.exec}
       14    0.000    0.000    0.000    0.000 {built-in method builtins.len}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
       14    0.000    0.000    0.000    0.000 {method 'extend' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'index' of 'list' objects}


         545 function calls in 0.001 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.001    0.001 <string>:1(<module>)
        1    0.001    0.001    0.001    0.001 python_alg_L4_HW.py:111(eratostene_prime_numbers)
        1    0.000    0.000    0.001    0.001 {built-in method builtins.exec}
      270    0.000    0.000    0.000    0.000 {built-in method builtins.len}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
      270    0.000    0.000    0.000    0.000 {method 'extend' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'index' of 'list' objects}


         7923 function calls in 0.226 seconds

   Ordered by: standard name

   ncalls  tottime  percall  cumtime  percall filename:lineno(function)
        1    0.000    0.000    0.226    0.226 <string>:1(<module>)
        1    0.225    0.225    0.226    0.226 python_alg_L4_HW.py:111(eratostene_prime_numbers)
        1    0.000    0.000    0.226    0.226 {built-in method builtins.exec}
     3959    0.001    0.000    0.001    0.000 {built-in method builtins.len}
        1    0.000    0.000    0.000    0.000 {method 'disable' of '_lsprof.Profiler' objects}
     3959    0.001    0.000    0.001    0.000 {method 'extend' of 'list' objects}
        1    0.000    0.000    0.000    0.000 {method 'index' of 'list' objects}

"""