from tkinter import *
# 클래스부분
# 클래스명은 대문자로 선언
class Car :
    # 자동차 속성 : class 안에 변수
    color = None
    speed = 0
    # 자동차의 행위(--> 함수, 기능) : class 안에 함수 = 메소드 => 파이썬에서 self 선언 약속
    def upSpeed(self, value):
        # speed = 0 (그냥 변수)
        self.speed += value
    def downSpeed(self, value):
        self.speed -= value
    #.list (or) .sort => 내부 메소드
    # 파라미터, value로 받는다 (100이라는 수치를 입력받으면서 이에 따라 action 동작)
    # 클래스 내에 속성을 변환시 자신(self.)을 붙이고 나와야한다
#----------------------------------------------------------------------------------------
# 메인코드부
# => 자동차를 찍어내보자
myvalue = 0 # class를 통해서 찍어내는 변수 : instance
car1 = Car()

car1.color = "빨강"
car1.speed = 50

car1.upSpeed(100)
print(car1.speed)

button1 = Button()
'''
 객체 = 사물 .. 자동차 => 객체지향 ㅣ 현실세계를 그대로 표현해내고 싶은 욕망에서 객체지향이 나옴 ex) 빌딩관리 / 학생출결 프로그램
자동차 속성 성격 // ex) 색상 가격 (property)
자동차 활동 행위 action // ex) 클락션 브레이크
'''
