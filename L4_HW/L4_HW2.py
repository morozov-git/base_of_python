from requests import get, utils
from datetime import datetime, date, time
#import DateTime
import dateutil.parser
#from decimal import Decimal

# response = get('http://www.cbr.ru/scripts/XML_daily.asp')
# encodings = utils.get_encoding_from_headers(response.headers)
# content = response.content.decode(encoding=encodings)
# currency_code = "JPY" #str(input("Введите код валюты: ")).upper()


# valcurs_date_ind = content.find('ValCurs Date="')
# valcurs_date = content[valcurs_date_ind + 14: valcurs_date_ind + 24: 1].replace(".", ", ")
# #valcurs_date = int(content[valcurs_date_ind + 20: valcurs_date_ind + 24: 1]), int(content[valcurs_date_ind + 17: valcurs_date_ind + 19: 1]), int(content[valcurs_date_ind + 14: valcurs_date_ind + 16: 1])
# d = int(content[valcurs_date_ind + 14: valcurs_date_ind + 16: 1])
# m = int(content[valcurs_date_ind + 17: valcurs_date_ind + 19: 1])
# y = int(content[valcurs_date_ind + 20: valcurs_date_ind + 24: 1])
# date_time_curr = dateutil.parser.parse(valcurs_date)
# date_curr = date(y, m, d)

#print(dt)


def currency_rates(name):
	response = get('http://www.cbr.ru/scripts/XML_daily.asp')
	encodings = utils.get_encoding_from_headers(response.headers)
	content = response.content.decode(encoding=encodings)
	currency_code = name
	currency_code_ind = content.find(currency_code)
	currency_inf = content[currency_code_ind - 52: currency_code_ind + 100: 1]
	valute_id_ind = currency_inf.find('<Valute ID="')
	valute_id = currency_inf[valute_id_ind+12: valute_id_ind+18: 1]
	num_code_ind = currency_inf.find("<NumCode>")
	num_code = currency_inf[num_code_ind+9: num_code_ind+12: 1]
	char_code_ind = currency_inf.find("<CharCode>")
	char_code = currency_inf[char_code_ind+10: char_code_ind+13: 1]
	nominal_ind1 = currency_inf.find("<Nominal>")
	nominal_ind2 = currency_inf.find("</Nominal>")
	nominal = currency_inf[nominal_ind1+9: nominal_ind2: 1]
	name_ind1 = currency_inf.find("<Name>")
	name_ind2 = currency_inf.find("</Name>")
	name = currency_inf[name_ind1+6: name_ind2: 1]
	value_ind = currency_inf.find("<Value>")
	value = currency_inf[value_ind+7: value_ind+14: 1].replace(",", ".")

	return value, nominal, name, char_code



print(currency_rates("USD").value)
#print(f'{value}, {char_code}, "стоит ", {value}, "RUR"')
print(content)
#print(content)
print(encodings)

print(name)
# print(type(response))