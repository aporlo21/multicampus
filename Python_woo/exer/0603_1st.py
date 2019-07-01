def add():
    num1 = int(input("num1:"))
    num2 = int(input("num2:"))
    result = num1 + num2
    print(result)

def sub():
	num1 = int(input("num1:"))
	num2 = int(input("num2:"))
	result = num1 - num2
	print(result)

def mult():
	num1 = int(input("num1:"))
	num2 = int(input("num2:"))
	result = num1 * num2
	print(result)

def devide():
	num1 = int(input("num1:"))
	num2 = int(input("num2:"))
	result = num1 / num2
	print(result)


while True:
	print("menu")
	print("-------")
	print("1 : add")
	print("2 : sub")
	print("3 : mult")
	print("4 : devide")
	print("5 : stop")

	sel = int(input(":"))

	if(sel == 1):
		add()
	elif(sel == 2):
		sub()
	elif(sel == 3):
		mult()
	elif(sel == 4):
		devide()
	elif(sel == 5):
		break
	else:
		print("Wrong input, please input again")

