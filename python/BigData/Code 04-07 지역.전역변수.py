def func1() :
    global a # 값세팅할시 필요 ( 외부 )
    a = 10
    print('func1() --> ', a)

def func2() :
    global a
    print('func2() -->', a)


# 변수 선언부
a = 1234
# 메인 코드부
func1()
print(a) # a가 10으로 변경 되어 있길 기대함
func2()