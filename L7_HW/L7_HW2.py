import os
from sys import argv

def create_folders_tree(tree):
	dir_path = os.path.join(*tree)
	if not os.path.exists(dir_path):
		os.makedirs(dir_path)

# для запуска из консоли или создания проэкта с другим именем запустить с параметром (имя_проекта)
with open("L7_HW2.txt", "r", encoding="utf-8") as tree:
	for line in tree:
		tree = (line.replace('\n', '').split('/'))
		if len(argv) == 1:
			argv.append(tree[0])
		else:
			tree[0] = argv[1]
		if '.' not in tree[-1]:
			create_folders_tree(tree) # вызываем функцию для создания дерева папок
		else:
			file = tree.pop()
			#print(file)
			create_folders_tree(tree)  # вызываем функцию для создания дерева папок
			with open(os.path.join('/'.join(tree), f'{file}'), 'wb') as f:
				f.write # Создаем пустой файл
#print("Project's structure is ready.")
if __name__ == '__main__':
	print(f'{argv[1]}', "'s structure is ready.", sep="")
	print(argv)