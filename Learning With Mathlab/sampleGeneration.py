import random 
import math
def calcFunc(a, b, c):
	if a==0:
		print("Nan")
	else:
		sorat = ((-1)*b + math.sqrt(math.fabs(b*b-4*c)))
		makhraj = ((math.cos(c)*math.log2(math.fabs(a)))*c)+10
		if makhraj==0:
			print("Nan")
			return -1
		else:
			print(math.fabs(sorat/makhraj))
			fileA = open("Atest.txt","a")
			fileA.write(str(a))
			fileA.write("	")
			fileA.close()
			fileB = open("Btest.txt","a")
			fileB.write(str(b))
			fileB.write("	")
			fileB.close()
			fileC = open("Ctest.txt","a")
			fileC.write(str(c))
			fileC.write("	")
			fileC.close()
			fileRes = open("Restest.txt","a")
			fileRes.write(str(math.fabs(sorat/makhraj)))
			fileRes.write("	")
			fileRes.close()
		return 1

if __name__ == '__main__':
	for i in range(50):
		a = random.randint(-20, 20)
		print(a)
		b = random.randint(-20, 20)
		print(b)
		c = random.randint(-20, 20)
		print(c)
		print("The result:")
		x = calcFunc(a, b, c)
		if x==-1:
			i=i-1;

