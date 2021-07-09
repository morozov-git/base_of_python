# 1. Проанализировать скорость и сложность одного любого алгоритма, разработанных в рамках
# домашнего задания первых трех уроков. Примечание: попробуйте написать несколько реализаций
# алгоритма и сравнить их.

"""
Задача из 2-го урока
	4. Найти сумму n элементов следующего ряда чисел: 1 -0.5 0.25 -0.125 ...
	Количество элементов (n) вводится с клавиатуры.
"""
import timeit
import cProfile


def sum_elem_r(number): # алгоритм с рекурсией
	if number <= 1:
		return number
	return 1 + (1 / -2 * sum_elem_r(number - 1))


def sum_elem_c(number): # алгоритм с циклом
	sum_elem = 1
	n = number
	elem = 1
	while n != 1:
		elem = elem / -2
		sum_elem = sum_elem + elem
		n -= 1
	return sum_elem


# print(sum_elem_c(4))
print(f"\nСумма 10 элементов последовательности равна: {sum_elem_r(10)}")
print("Время выполнения(рекурсия):", timeit.timeit('sum_elem_r(10)', 'from __main__ import sum_elem_r', number=10000))
print("Время выполнения(цикл):", timeit.timeit('sum_elem_c(10)', 'from __main__ import sum_elem_c', number=10000))
print(f"\nСумма 990 элементов последовательности равна: {sum_elem_r(990)}")
print("Время выполнения(рекурсия):", timeit.timeit('sum_elem_r(990)', 'from __main__ import sum_elem_r', number=10000))
print("Время выполнения(цикл):", timeit.timeit('sum_elem_c(990)', 'from __main__ import sum_elem_c', number=10000))
print(f"\nСумма 10000 элементов последовательности равна: {sum_elem_c(10000)}")
print("Время выполнения(цикл):", timeit.timeit('sum_elem_c(10000)', 'from __main__ import sum_elem_c', number=10000))

cProfile.run('sum_elem_r(10)')
cProfile.run('sum_elem_c(10)')
cProfile.run('sum_elem_r(990)')
cProfile.run('sum_elem_c(990)')
cProfile.run('sum_elem_c(10000)')

"""
Сложность обоих алгоритмов приблизительно одинаковая и равна О(f(n)).
Но время выполнения различно на разном количестве входных данных:
	Для небольших значений n - время практически равно.

		Сумма 10 элементов последовательности равна: 0.666015625
		Время выполнения(рекурсия): 0.037525719
		Время выполнения(цикл): 0.03194997399999999

	Для средних значений  n - время начинает различаться в пользу алгоритма с циклом,
	но все равно можно проследить линейную зависимость.

		Сумма 990 элементов последовательности равна: 0.6666666666666666
		Время выполнения(рекурсия): 3.053304334
		Время выполнения(цикл): 1.4696196750000001

	Для больших значений  n - время для алгоритма с рекурсией посчитать не получается так как мы достигаем 
	максимальной глубины рекурсии, а с циклом видно, что время выполнения так же увеличивается линейно.

		Сумма 10000 элементов последовательности равна: 0.6666666666666667
		Время выполнения(цикл): 15.210129089000002
"""