
import os
import shutil
import os.path

import my_project

dirs_template_list = []
root_dir = my_project.__path__[0]
for root, dirs, files in os.walk(root_dir):
	for dir in dirs:
		if root.split('/')[-1] == 'templates':
			dirs_template_list.append(root.split('/'))
		#rel_path = relpath(os.path.join(root), root_dir)

#print(dirs_template_list)
for folder in dirs_template_list:
	print('/'.join(folder))
	#i = str('/'.join(folder))
	shutil.copytree('/'.join(folder), root_dir + '/' + folder[-1], dirs_exist_ok = True)
