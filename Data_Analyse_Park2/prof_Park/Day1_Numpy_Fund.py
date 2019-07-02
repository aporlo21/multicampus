#
# 파이썬은 배열이라는 자료형 제공 x, 리스트 자료형임
# 내장이 안되있으므로
# 배열 : 모든 원소가 같은 자료형, 원소의 개수 변경 불가
# ndarray 지원 ( n차원 배열 ) => 선형대수 계산
# 벡터화 연산 => 고속화 처리가능
# c : 클래스 // f : 함수(function) //
import numpy as np
arr = np.array([1,2,3]) # list를 array라는 배열에 넣어주면
print(type(arr))
ans = []
for i in arr :
    ans .append(2*i)
print(ans) # 문장 3번 수행

print(2*arr) # 벡터화연산(효율적)

li=[1,2,3]
print(li*2) # 두번찎은값 도출

a=np.array([1,2]) # list -> array
b=np.array([10,20])
print(3*a+b) # array : 요소 끼리 연산

arr = np.array([1,2,3])
print(arr==2)
print((arr<2) & (arr>0))

c=np.array([[1,2,3],[4,5,6]]) #2*3 array
print(len(c)) # 행의개수
print(len(c[0])) # 열의개수

# 배열의 차원(ndim), 크기(shape)
a = np.array([1,2,3])
print(a.ndim) # dimension 이 1차원
print(a.shape) #

a2 = np.array([[1,2,3],[4,5,6]])
print(a2.ndim) # dimension 이 1차원
print(a2.shape) # 2행 3열

a3 = np.array([1,2,3,4,5])
print(a3[-1]) # 뒤에서부터

a4 = np.array([[1,2,3],[4,5,6]]) # 2,3
# a4 참조하여 2출력
print(a4[0]) # [1,2,3]
print(a4[0][1]) # 2
print(a4[0,1]) # 2

# 5참조
print(a4[-1]) # [4,5,6]
print(a4[-1,-1]) # 6
print(a4[-1,-1]) # 6

# 5,6 슬라이싱 ( 자르기 / 가르기 )
print(a4[1,1:3]) # [ 5 6 ]
print(a4[1,1:])
print(a4[0,1:3]) # [ 2 3 ]

# f(x) = w1x1 + w2x2 + ...+ wnxn + b
# w : 가중치, x : 데이터
# multi - variable linear - regression ( 다항변수 선형회귀 모델 )
a = np.zeros(5) # 전부다 0으로 만듬
a = np.zeros((5,2), dtype = "i")
print(a)

b = np.empty((5,2)) # 기존메모리에 저장되어있는 쓰레기 값이 할당되어져 도출됨
print(b)

# range
# arange # numpy에서 사용되는 함수 // 특정 규칙에 따라 배
print(np.arange(10)) # (,) 유무 여부로

print(np.arange(10,50,3))

# 선형 구간을 만들시 생성하는 함수
print(np.linspace) #linear space
print(np.linspace(0,100,5)) # 선형공간에서 5개의 구간으로 나눌때 사용
print(np. logspace(0.1,1,10)) # 로그

print(a.T)
# f(x) = wx + b

b = np.arange(12)
print(b)
# 1 => 2차원, 4행 3열로 변환 => reshape
c = b.reshape(4,3)
print(c)

# 1차원 -> 다차원 : reshape
# 다차원 -> 1차원 : ravel, flatten
print(c.flatten())
print(c.ravel())

x = np.arange(5)
print(x)
x = x.reshape(1,5)
print(x) # 1 행 5 열
x = x.reshape(5,1)
print(x) # 5 행 1 열
# 가장 안쪽의 대괄호안에 숫자 = 행

print(x[:, np.newaxis]) # 대괄호 3개 => 차원을 1증가시키는 속성 : newaxis

a1 = np.ones((2,3))
print(a1)
print(a1*5) # 5로 초기화하는법

a2 = np.zeros((2,3)) # (행, 열)
print(a2)

print(np.hstack([a1, a2])) # ( iteration : 반복 )이 가능한 자료형[list, tuple] # 행의 수가 동일한 두개이상의 배열을 연결하는 함수
print(np.vstack([a1, a2])) # 열의 개수가 동일한 두개이상의 배열을 위아래로 연결하는 함수 => 4행 3열 배열을 이룸 [합쳐짐]


