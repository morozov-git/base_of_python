
import os.path

import django

files_size_dict = {100:0, 1000:0, 10000:0, 100000:0}
root_dir = django.__path__[0]
for root, dirs, files in os.walk(root_dir):
	for file in files:
		file_size = os.path.getsize(root + '/' + file)
		if 0 < file_size < 101:
			files_size_dict[100] = files_size_dict[100] + 1
		if 101 < file_size < 1001:
			files_size_dict[1000] = files_size_dict[1000] + 1
		if 1000 < file_size < 10001:
			files_size_dict[10000] = files_size_dict[10000] + 1
		if 10000 < file_size < 100001:
			files_size_dict[100000] = files_size_dict[100000] + 1


#		print(file_size)

print(files_size_dict)
