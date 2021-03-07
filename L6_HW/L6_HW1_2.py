

# Обработка IP - заполнение словаря
ip_dict = {}
def ip_dict_sort(ip):
	ip = list_line[0]
	# num_requests = 0
	if ip in ip_dict:
		ip_dict[ip] = ip_dict[ip] + 1
	else:
		ip_dict[ip] = 1

# обработка nginx_logs.txt
with open("nginx_logs.txt", "r", encoding="utf-8") as logs:
	with open("logs_list.txt", "w", encoding="utf-8") as logs_list:
		logs_list.write("[\n")
	for line in logs:
		list_line = list(line.replace('"', '').split(' '))
		tuple_content = (list_line[0], list_line[5], list_line[6])
		with open("logs_list.txt", "a", encoding="utf-8") as logs_list:
			logs_list.write(f'{tuple_content}\n')
		#print(list_line[0])
		ip_dict_sort(list_line[0]) # вызов функции для заполнения словаря IP
	with open("logs_list.txt", "a", encoding="utf-8") as logs_list:
		logs_list.write("]\n")


# сортировка словаря по значениям
ip_sort_dict = sorted(ip_dict.items(), key=lambda item: item[1])
#print(ip_sort_dict, sep='')
print(f'SPAM IP: {ip_sort_dict[-1][0]}\nSPAM requests: {ip_sort_dict[-1][1]}\n')
