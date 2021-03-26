class Road:

	def __init__(self, l=5000, w=20):
		self.__length = l
		self.__width = w


	def coating_weight (self, one_m_weight=25, thickness=5):

		coating_weight = self.__width * self.__length * one_m_weight * thickness / 1000
		print(f'Для покрытия догоги шириной {self.__width}м. и длиной {self.__length} м. слоем асфальта толщиной {thickness} см.\n'
			  f'потребуется {coating_weight} т. асфальта.')
		#pass


road_1 = Road()
road_1.coating_weight()

road_1 = Road(5000, 40)
road_1.coating_weight(25, 10)

road_1 = Road(6000, 30)
road_1.coating_weight(25, 10)

