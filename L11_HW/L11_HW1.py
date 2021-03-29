class Date:
	def __init__(self, date):
		self.data = date

	@classmethod
	def m_1(cls, date):
		dmy = list(map(int, date.split("-")))
		return cls.m_2(dmy)

	@staticmethod
	def m_2(obj):
		d, m, y = obj
		if y in range(1900, 2100) and m in range(1, 13) and d in range(1, 32):
			if d <= 28:
				return f"Date: {d:02}.{m:02}.{y}"
			elif 28 < d < 31 and m != 2:
				return f"Date: {d:02}.{m:02}.{y}"
			elif d == 31 and m in (1, 3, 5, 7, 8, 10, 12):
				return f"Date: {d:02}.{m:02}.{y}"
			elif m == 2 and y in range(1900, 2100, 4):
				return f"Date: {d:02}.{m:02}.{y}"
			else:
				return f"Date is wrong"
		else:
			return f"Date is wrong"
		#return f"{obj}"

#date_1 = Date.m_1("33-05-1908")
print(Date.m_1("33-05-1908"))
print(Date.m_1("31-05-1908"))
print(Date.m_1("29-02-1907"))
print(Date.m_1("29-02-2000"))
print(Date.m_1("30-02-2001"))
print(Date.m_1("29-03-2021"))
print(Date.m_1("31-12-2021"))
print(Date.m_1("29-13-2021"))
print(Date.m_1("01-08-2021"))
print(Date.m_1("31-04-2021"))



# 1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936, 1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980, 1984, 1988, 1992, 1996, 2000, 2004, 2008, 2012, 2016, 2020, 2040, 2024, 2028, 2032, 2036, 2040, 2044, 2048, 2052, 2056, 2060, 2064, 2068, 2072, 2076, 2080, 2084, 2088, 2092, 2096

