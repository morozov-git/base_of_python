

def logger(func):
    def wrapper(*args):
        result = func(*args)
        print(f'\n\ta = {func.__name__}({", ".join(map(str, args))})\n'
              f'\t{func.__name__}({", ".join(map(str, args))}: {type(args[0])})\n'
              f'\t{func.__name__}_result = ({", ".join(map(str, result))})')
        return result
    return wrapper


@logger
def calc_cube(*args):
    r = []
    for i in list(args):
        r.append(i ** 3)
    return tuple(r)

calc_a = calc_cube(2, 5, 6)
calc_b = calc_cube(3)
calc_c = calc_cube(4)
# print(calc_a)
# print(calc_b)
# print(calc_c)
print('\n')



# Функция с циклом для вывода отдельных результатов по каждому элементу
# def logger(func):
#     def wrapper(*args):
#         result = func(*args)
#         ind = 0
#         for i in args:
#             print(f'\ta = {func.__name__}({i})') # {", ".join(map(str, i))}
#             print(f'\t{func.__name__}({i}: {type(i)})') #", ".join(map(str, i))
#             print(f'\t{func.__name__}_result = {result[ind]}\n')
#             ind +=1
#         return result
#     return wrapper
