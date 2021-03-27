from abc import ABC, abstractmethod



class Сlothes(ABC):
	def __init__(self, t_c = 0):
		self.tissue_consumption = t_c

	@abstractmethod
	def consumption(self):
		return self.tissue_consumption

class Coat(Сlothes):
	def __init__(self, s):
		self.size = s


	@property
	def consumption(self):
		tissue_consumption = self.size/6.5 + 0.5
		return tissue_consumption

class Suit(Сlothes):
	def __init__(self, h):
		self.height = h

	@property
	def consumption(self):
		tissue_consumption = 2 * self.height + 0.3
		return tissue_consumption

suit_1 = Suit(1.80)
print(f"Расход ткани на suit_1: {suit_1.consumption:.2f}")
coat_1 = Coat(48)
print(f"Расход ткани на coat_1: {coat_1.consumption:.2f}")
print(f"Расход ткани на suit_1 и coat_1: {(suit_1.consumption + coat_1.consumption):.2f}")
suit_2 = Suit(1.60)
print(f"Расход ткани на suit_1: {suit_2.consumption:.2f}")
coat_2 = Coat(54)
print(f"Расход ткани на coat_2: {coat_2.consumption:.2f}")
print(f"Расход ткани на suit_2 и coat_2: {(suit_2.consumption + coat_2.consumption):.2f}")







