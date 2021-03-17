import re

def email_parse(email_address):
	#str = 's1ome-o_ne@geekEra.insR.wqwq'
	email = re.search(r'^([i\w+._-]*)\@{1}(\w+[\.\w+]{0,}\.\w{2,4})$', email_address)
	try:
		assert email #, f'wrong email {email_address}'
	except AssertionError:
		return(f'Error! Wrong email: {email_address}')
	else:
		email_dict = {'username': email_address.split('@')[0], 'domain': email_address.split('@')[1]}
		return email_dict

#print(email_parse('s1ome-o_ne@geekEra.insR.wqwq'))
print(email_parse('someone@geekbrains.ru'))




#print(re.match(r'([i\w+._-]*)\@{1}(\w+[\.\w+]{0,}\.\w{2,4})', str))

#print(re.match(r'([i\w+._-]*)\@{1}(\w+[\.\w+]{0,}\.\w{2,4})', str), f'wrong email {str}')