tutors = ['Иван', 'Анастасия', 'Петр', 'Сергей', 'Дмитрий', 'Борис', 'Елена', 'Николай', 'Екатерина']
klasses = ['9А', '7В', '9Б', '9В', '8Б', '10А', '10Б', '9А']
#klasses = ['9А', '7В']

def tutor_class_gen(tutors, klasses):
	for i in range(len(tutors)):
		if len(klasses) > i:
			tutor_class = (tutors[i], klasses[i])
		else:
			tutor_class = (tutors[i], None)
		yield tuple(tutor_class)




tutor_class = tutor_class_gen(tutors, klasses)
print(type(tutor_class), next(tutor_class), next(tutor_class), next(tutor_class),  next(tutor_class), next(tutor_class))
print(type(tutor_class), *tutor_class)
#print(type(tutor_class), tutor_class)