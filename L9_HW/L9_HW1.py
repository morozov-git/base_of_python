
import time
import sys
import threading

class TrafficLight:
	__color = ('\033[30;41m', '\033[30;43m', '\033[30;42m', '\033[30;43m')

	def __init__(self, r='\033[30;41m', y='\033[30;43m', g='\033[30;42m'):
		self.red = r
		self.yellow = y
		self.green = g

	def running(self, time_red, time_yellow, time_green):
		t = 0
		while True:
			for i in TrafficLight.__color:
				print(f"{i}\r The traffic light has been working for {t} seconds. Print 's' + Enter to STOP! ",
					  end='')
				if i == self.red:
					time.sleep(time_red)
					t += time_red
				if i == self.yellow:
					time.sleep(time_yellow)
					t += time_yellow
				if i == self.green:
					time.sleep(time_green)
					t += time_green


def switch():
	while True:
		com = input()
		if com == 's':
			print('\033[0m Traffic is STOP!')
			sys.exit()
			break



traffic_1 = TrafficLight()
#traffic_run = TrafficLight.running(traffic_1, 5, 3, 5)
traffic_time = (7, 2, 10)
threading.Thread(target=traffic_1.running, daemon=True,name="t1", args=[*traffic_time]).start()
#threading.Thread(target=traffic_1.running, daemon=True,name="t1", args=[5, 3, 5]).start()
switch()


