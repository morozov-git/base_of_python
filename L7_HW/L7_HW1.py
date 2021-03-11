import os

with open("L7_HW1.txt", "r", encoding="utf-8") as tree:
	for line in tree:
		tree = (line.replace('\n', '').split(','))
		dir_path = os.path.join(*tree)
		if not os.path.exists(dir_path):
			os.makedirs(dir_path)