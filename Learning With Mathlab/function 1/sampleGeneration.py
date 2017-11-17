import random 
import math
def calcFunc(a, b, c):
	if a==0:
		print("Nan")
	else:
		sorat = (math.pow(a, b)+math.sqrt(math.fabs(c*c-b*b)))
		makhraj = (math.cos(c)*math.log2(math.fabs(a)))
		if makhraj==0:
			print("Nan")
		else:
			print(sorat/makhraj)
			fileA = open("testASample.txt","a")
			fileA.write(str(a))
			fileA.write("	")
			fileA.close()
			fileB = open("testBSample.txt","a")
			fileB.write(str(b))
			fileB.write("	")
			fileB.close()
			fileC = open("testCSample.txt","a")
			fileC.write(str(c))
			fileC.write("	")
			fileC.close()
			fileRes = open("testResSample.txt","a")
			fileRes.write(str(sorat/makhraj))
			fileRes.write("	")
			fileRes.close()

if __name__ == '__main__':
	for i in range(100):
		a = random.randint(-20, 20)
		print(a)
		b = random.randint(-10, 10)
		print(b)
		c = random.randint(1, 50)
		print(c)
		print("The result:")
		calcFunc(a, b, c)