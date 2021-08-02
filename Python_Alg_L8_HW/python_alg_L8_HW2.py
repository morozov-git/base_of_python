"""
2. Закодируйте любую строку из трех слов по алгоритму Хаффмана.
"""


import heapq
from collections import Counter, namedtuple

class Node (namedtuple("Node", ["left", "right"])):
	def walk(self, code, acc):
		self.left.walk(code, acc + "0")
		self.right.walk(code, acc + "1")

class Leaf(namedtuple("Leaf", ["char"])):
	def walk(self, code, acc):
		code[self.char] = acc or "0"

def huffman_code(string_for_code):
	huffman_tree = []
	for elem, freq in Counter(string_for_code).items(): # Разбираем строку по элементам и считаем частоту вхождения элементов в строку
		huffman_tree.append((freq, len(huffman_tree), Leaf(elem)))
	heapq.heapify(huffman_tree)
	count = len(huffman_tree)
	while len(huffman_tree) > 1: # берем по одному элементу и формируем дерево(разделяем на левую и правую ветвь)
		freq_left, count_left, left_elem = heapq.heappop(huffman_tree)
		freq_right, count_right, right_elem = heapq.heappop(huffman_tree)
		heapq.heappush(huffman_tree, (freq_left + freq_right, count, Node(left_elem, right_elem)))
		count += 1
	huffman_code_elem = {}
	if huffman_tree: # разбираем полученное дерево и кодируем элементы согласно глубине вложения
		[(_freq, _count, root)] = huffman_tree
		root.walk(huffman_code_elem, "")
	return huffman_code_elem


our_input_string = input(f"\nВведите строку для кодирования по алгоритму Хоффмана:\n")
#our_input_string = "hello world"
huffman_code = huffman_code(our_input_string)
coded_string = "".join(huffman_code[key] for key in our_input_string)

# for key in sorted(huffman_code):
# 	print(f"{key}: {huffman_code[key]}")
#print(huffman_code)
print(f"\nВведенная сторока для кодирования: {our_input_string}\n"
	  f"Закодированная строка по алгоритму Хаффмана: {coded_string}")

