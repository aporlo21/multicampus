"""
# 수치형 - 기본표현
print('100')
print("%d" %100)

# 수치형 - 연산
print("100 + 100")
print("%d" %(100+100))

# 수치형
print("%d %d" % (100, 200))
print("%d/%d=%f" % (100, 200, 0.5))
print("%d/%d=%5.1f" % (100, 200, 0.5))

# 정수형 데이터 
print('%d' % 123)
print('%5d' % 123)
print('%05d' % 123)
print('%15d' % 123)
print('%015d' % 123)

#  실수형 데이터
print('%f' % 123.45)
print('%7.1f' % 123.45)
print('%7.4f' % 123.45)
print('%4.2f' % 123.45)

# 문자열 데이터
print('%7.3s' % 'Python')
print('%9.4s' % 'Python')

print("%d %5d %05d" % (123, 123, 123))
print('{0:d} {1:5d} {2:05d}' .format(123, 123, 123))
print('{1:05d} {0:2d}' .format(123, 345))
#이스케이프 문자
print('한 행입니다. \n또 한 행입니다')
print('한 행입니다. \t또 한 행입니다') #tab 키 누른효과 
print('한 행입니다. \b또 한 행입니다') #뒤로 한칸 backspace 누른 효과
print('한 행입니다. \\또 한 행입니다') #\ 출력
print('한 행입니다. \'또 한 행입니다') #' 출력
print('한 행입니다. \"또 한 행입니다') #" 출력
print('어머니께서 \" 니 이름이 뭐니\" \b 라고 \n여쭤 \t보셨습니다\\')
print('\t\t\t*')
print('\t\t*')
print('\t\t***\n\t**\n\t*')
print('\t\t***')

# type함수
boolvar = True
intvar = 0
floatvar = 1.1
strvar = "funny boy"
type(boolvar), type(intvar), type(floatvar), type(strvar)
print(boolvar, "\nintvar()")

# 변수 지정
var1 = 450
var2 = 100
var3 = var1 - var2
print(var3)

var1 = var1 + 150
print(var1)
novar = novar + 199
print(novar)

dvar = 100
type(dvar)
intvar = 222.2
type(intvar)

0b10010011
print("0b10010011")

print("입력 진수 결정(16/10/8/2) :", input());
print("값 입력", hex(input())); 
print("16진수 ===>", hex(input()));
print("10진수 ===>", input());
print(" 8진수 ===>", oct(input()));
print(" 2진수 ===>", bin(input()))

#num 전에 출력되어져야함
sel = int(input('입력 진수 결정(16/10/8/2) :'))
num = input("값 입력 :")

if sel == 16 :
	num10 = int(num, 16)
if sel == 10 :
	num10 = int(num, 10)
if sel == 8 :
	num10 = int(num, 8)
if sel == 2 :
	num10 = int(num, 2)
if sel != 16 and 10 and 8 and 2 :
	print('16,10,8,2 숫자중 하나만 입력하시오')	
print('16진수 ==>', hex(num10))
print('10진수 ==>', num10)
print('8진수 ==>', oct(num10))
print('2진수 ==>', bin(num10))
"""
a = 100 ** 100 
print(a) #int 의 크기에는 제한잉없다 



