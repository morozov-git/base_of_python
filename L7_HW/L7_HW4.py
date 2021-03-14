
import os.path

import django

files_size_dict = {10:0, 100:0, 1000:0, 10000:0}
#files_size_dict = {}
root_dir = django.__path__[0]
for root, dirs, files in os.walk(root_dir):
	for file in files:
		file_size = os.path.getsize(root + '/' + file) / 2 ** 10
		if 0 < file_size < 11:
			files_size_dict[10] += 1
		if 11 < file_size < 101:
			files_size_dict[100] += 1
		if 100 < file_size < 1001:
			files_size_dict[1000] += 1
		if 1000 < file_size < 10001:
			files_size_dict[10000] += 1


		print(file_size)
print(f'\nСтатистика по размерам файлов в КБ для папки: \n{root_dir}', sep='')
print(files_size_dict)
