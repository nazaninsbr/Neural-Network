import random 
import math
def calcFunc(a, b, c):
	if a==0:
		print("Nan")
	else:
		makhraj = (math.pow(a, b)+math.sqrt(math.fabs(c*c-b*b)))
		sorat = (math.cos(c)*math.log2(math.fabs(a)))
		if makhraj==0:
			print("Nan")
		else:
			print(math.fabs(sorat/makhraj))
			fileA = open("A.txt","a")
			fileA.write(str(a))
			fileA.write("	")
			fileA.close()
			fileB = open("B.txt","a")
			fileB.write(str(b))
			fileB.write("	")
			fileB.close()
			fileC = open("C.txt","a")
			fileC.write(str(c))
			fileC.write("	")
			fileC.close()
			fileRes = open("Res.txt","a")
			fileRes.write(str(math.fabs(sorat/makhraj)))
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