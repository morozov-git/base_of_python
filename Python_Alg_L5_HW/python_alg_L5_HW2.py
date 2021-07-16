"""
2. Написать программу сложения и умножения двух шестнадцатеричных чисел. При этом
каждое число представляется как массив, элементы которого это цифры числа. Например,
пользователь ввёл A2 и C4F. Сохранить их как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно.
Сумма чисел из примера: [‘C’, ‘F’, ‘1’], произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].
Примечание: для решения задач попробуйте применить какую-нибудь коллекцию из модуля collections
"""




from collections import deque as deque


def elem_nums(nums): # функция для проверки цифр вводимых шестнадцатиричных чисел
    elem_str = "0123456789ABCDEFabcdef"
    for elem in nums:
        if elem not in elem_str:
            return False
    return True

def input_hex_nums(): # функция для проверки вводимых шестнадцатиричных чисел
    while True:
        hex_nums = input(f"\nВведите через запятую два шестнадцатеричных числа:\n")
        hex_nums = hex_nums.split(",")
        #elem_nums = True
        if len(hex_nums) == 2 and elem_nums(hex_nums[0]) == True and elem_nums(hex_nums[1]) == True:
            #print(hex_nums)
            a = list(hex_nums[0].upper())
            b = list(hex_nums[1].upper())
            return a, b
            #break
        print("неверный ввод")

def hex_to_dec(num): # функция для перевода шестнадцатеричных чисел в десятичные
    hex_digit = list("0123456789ABCDEF")
    dec_num = 0
    index = 0
    for i in num:
        a = hex_digit.index(i) * 16 ** (len(num) - 1 - index)
        index += 1
        dec_num += a
    #print(dec_num)
    return dec_num

def dec_to_hex(num): # функция для перевода десятичных чисел в шестнадцатеричные
    hex_digit = list("0123456789ABCDEF")
    hex_num = deque([])
    while num != 0:
        b = num % 16
        c = hex_digit[b]
        hex_num.appendleft(c)
        num = num // 16
    #print(list(hex_num))
    return list(hex_num)


hex_1, hax_2 = input_hex_nums()
# hex_1 = ["A", "2"]
# hax_2 = ["C", "4", "F"]
# print(hex_to_dec("ABC"))
# print(dec_to_hex(2748))
sum_hex_nums = dec_to_hex(hex_to_dec(hex_1) + hex_to_dec(hax_2)) # вычисляем сумму шестнадцатеричных чисел через преобразование их в десятичные
mul_hex_nums = dec_to_hex(hex_to_dec(hex_1) * hex_to_dec(hax_2)) # вычисляем произведение шестнадцатеричных чисел через преобразование их в десятичные

print(f"Первое шестнадцатеричное число равно: ",  *hex_1, sep="")
print(f"Второе шестнадцатеричное число равно: ",  *hax_2, sep="")
print(f"Сумма шеснадцатеричных равна: ", *sum_hex_nums, sep="")
print(f"Произведение шеснадцатеричных равно: ", *mul_hex_nums, sep="")
