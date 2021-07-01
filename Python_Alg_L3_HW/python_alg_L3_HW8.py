# 8. Матрица 5x4 заполняется вводом с клавиатуры кроме последних элементов строк.
# Программа должна вычислять сумму введенных элементов каждой строки и записывать ее
# в последнюю ячейку строки. В конце следует вывести полученную матрицу.

def input_matrix(w, h): # фунция для ввода матрицы
    wide_matrix = w
    hight_matrix = h
    user_matrix = []
    line = 1
    while hight_matrix != 0:
        user_line = input(f"\nВведите {line}-ю строку матрицы ({wide_matrix} целых чисел через запятую):\n")
        user_line = user_line.split(",")
        if len(user_line) == wide_matrix:
            for i in range(len(user_line)):
                if user_line[i].isdigit() == True:
                    user_line[i] = int(user_line[i])
                    #print(user_line[i])
                elif user_line[i].isdigit() != True:
                    user_line.pop()
                    break
        if len(user_line) == wide_matrix:
            user_matrix.append(user_line)
            hight_matrix -= 1
            line += 1
    return user_matrix


wide_matrix = 5
hight_matrix = 4
user_matrix = input_matrix(wide_matrix, hight_matrix)
#print(user_matrix)

print("Сумма элементов строки матрицы:")
for h in range(hight_matrix):
    for w in range(wide_matrix):
        print(f"{user_matrix[h][w]:4d}", end=" ")
    print(" | ", sum(user_matrix[h]))