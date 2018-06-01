from home.models import Genres
f = open('4.txt')
l= []
for line in f: 
	line = line.rstrip()
	#print(line)
	Genres.objects.create(genre=line)

#print(l)
	
