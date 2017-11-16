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
			fileA = open("testA.txt","a")
			fileA.write(str(a))
			fileA.write("\n")
			fileA.close()
			fileB = open("testB.txt","a")
			fileB.write(str(b))
			fileB.write("\n")
			fileB.close()
			fileC = open("testC.txt","a")
			fileC.write(str(c))
			fileC.write("\n")
			fileC.close()
			fileRes = open("testRes.txt","a")
			fileRes.write(str(sorat/makhraj))
			fileRes.write("\n")
			fileRes.close()

if __name__ == '__main__':
	for i in range(300):
		a = random.randint(-20, 20)
		print(a)
		b = random.randint(-10, 10)
		print(b)
		c = random.randint(1, 50)
		print(c)
		print("The result:")
		calcFunc(a, b, c)