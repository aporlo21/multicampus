# PYTHON

## 1. 파이썬 시작

- Python - 프로그램 만들기 or Website 생성용도

```
> > > a + b

> > > pigdad	

> > > a + ' ' + b
> > > pig dad

> > > family = ['mother', 'father', 'gentleman', 'sexy lady']

> > > len(family)
> > > 4

> > > family[3]

> > > family[2]
> > > 'gentleman'

> > > family.remove('gentleman')

> > > family
> > >
> > > ['mother', 'father', 'sexy lady']
```

- len(family)

=> 해당 집합의 요소 개수

- family. remove('gentleman')

=> 해당 집합 특정 요소 제거

컴퓨터가 알아듣는 말 : 컴퓨터는 전기가 통하는지 안통하는지 1, 0 신호표현만 가지고 정보를 처리한다. ex) 스위치 두개로 네가지 정보표현

[0.0]

[0.1]

[1.0]

[1.1]

스위치 열개 2^10 = 1024

스위치 하나 bit

컴퓨터가 알아들을 비트로 말을 해야한다

프로그래밍 언어 = 저급언어

저급언어 - 기계어 & 어셈블리어

사람이 한마디 할때마다 동시통역하는 방식 = interpret 방식

사람이 말하는 것을 처음부터 끝까찌 듣고 한번에 바꾸는 것 = complie 방식

''우리의 명령을 한 줄 씩 헤석해서 일을 한다' 는 측면, python은 interpret 방식. = 대화식 사용방법

실제 프로그램 작성시엔 프로그램을 파일형태로 만들어 두고 사용해야한다.

들여쓰기 잊지마

​	Python 설치 폴더 아래에는 새로 폴더를 만들어 저장시킨다. with py확장자. ex) D:\Python27 아래 exam 폴더, triangle.py로 저장.

예제 1.5

## 2. 제어구조

프로그래밍의 핵심요소인 분기와 반복 python 내 사용법

### 2.1 반복문 ( while )

```
> > > num = 1
> > > while num <= 100:
> > > ...     print(num)
> > > ...     num = num + 1
> > > ...
```

### 2.2 조건문 ( if )

```
>>> d = 15 + 15 + 15 + 15 + 15
>>> if c > d:                      # 만약 c가 d보다 크면
...     print('c > d')             # 'c > d'라고 출력한다.
... elif c == d:                   # 그렇지 않고 c와 d가 같다면
...     print('c == d')            # 'c == d'라고 출력한다.
... else:                          # 이도 저도 아니면
...     print('c < d')             # 'c < d'라고 출력한다.



c == d
```

c = 15 * 5

elif : 여러 개의 조건을 검사해서 그 중에서 맘에 드는 것을 고를수 있다.

- c == d : c & d의 값이 같다.

### 2.3 반복문 ( for )

for 문은 list과 같은 순서형 자료를 이용해서 원하는 명령을 반복할 때 사용.

- for문 이용한 가족들의 이름과 문자열 길이 출력

```
> > > family = ['mother', 'father', 'gentleman', 'sexy lady']

> > > for x in family:                    # family라는 목록의 각각의 항목 x에 대하여:
> > > ...     print('%s %s' % (x, len(x)))    # x와 x의 길이를 출력하라.
> > > ...

> mother 6
> father 6
> gentleman 9
> sexy lady 9
```

- range

```
> > > range(2, 7)         # 파이썬 2
> > > list(range(2, 7))   # 파이썬 3

> [2, 3, 4, 5, 6]
```

## 3. 함수

파이썬에서 제공하는 함수 or 우리가 필요로 하는것을 직접 만들어 씀 or 누군가가 만든 함수 얻어 쓸수도 있다.

프로그래밍을 도와주는 고마운 존재

```
> > > def print_list(a) : 	# 지금부터 print_list 함수를 만들겠다 // 괄호안 a : 매개변수 
> > >
> > > 	for i in a : 	# 함수의 이름을 지어주는 부분
> > >
> > > 		print(i)	# a 라는 리스트 원소를 차례로 출력하라

> > > print_list(a_list)

> > > def boy():
> > >
> > > 	printf('I am a boy')
> > >
> > > 	printf('You are a girl')
```

- 매개변수

a > b / a < b / a == b

매개변수 2개 필요

```
### 3.1 재귀적 용법
```

재귀 : 함수가 자기 자신을 호출하는 '재귀' 적인 용법

```
> > > def hap(a, b)		# 두수를 합하는 함수
> > >
> > > 	print(a + b)

> > > def gop(a, b)		# 두 수를 곱하는 함수
> > >
> > > 	print(a * b)

> > > def hap_gop(a, b) : 	# 두 수를 합해보고 곱해보고, 두가지 일을 다하는 함수
> > >
> > > 	hap(a, b)		# 이 함수는 자기에게 맡겨진 일을 직접 수행하지 않고 다른 함수에게 시켜버린다
> > >
> > > 	gop(a, b)		# 이 함수는 hap() 함수와 gop() 함수를 호출햇다고 할 수 있습니다. 

> > > def countdown(n) : # if, else 구조로서 n이 0인지 아닌지에 따라서 다른일을 하도록 되어 있다. 
> > >
> > > 	if n == 0 :		
> > >
> > > 		print("Blastoff!")
> > >
> > > 	else :
> > >
> > > 		print(n)
> > >
> > > 		countdown (n-1)
```

- 매개변수로 받은 수부터 카운트다운을 하다가 0까지 오면 꽝! 하는 일을 한다.

```
> > > countdown(3)	

> 3
>
> 2
>
> 1
>
> Blastoff!
>
> 
```

if 문에서 하는 n 은 1째 줄에서 함수 정의시 매개변수로 정한n과같다. 매개변수에 3을 넣어 함수호출시, 즉, countdown(3) 이라 쓰면 함수본체의 n값으로 3이 들어간다.

n값에 3이 들어오면 함수 내부에서는, 먼저 if n == 0: 에서 n값이 0과 같은지 비교한다. n이 3이므로 n값과 0은 같지 않다. else: 이후의 명령을 수행한다.

print(n) 은 n값을 출력하라는 명령으로, 화면에 3을 출력.

다음엔 countdown(n-1) countdown함수를 호출하여 n-1값을 매개변수로 넣어라. 결국 countdown(2)와 같이 함수를 호출하게 된다.

- BUT. countdown함수에서 countdown을 호출한다?

=> 재귀적 호출 / 함수가 자기자신을 호출하는것

countdown(2) : if문에서 n값과 0이 같은지 검사. 검사결과 거짓이므로, else: 이후명령 수행 - n값인 2를 화면출력하고 다음줄에서 countdown(1) 호출.

처음 함수 호출시 매개변수 3입력, 함수가 재귀적호출하여 매개변수가 점점감소

countdown(0) : n == 0 => print("Blastoff!") 수행 및 화면출력

**Ex - Question**

2 * 1 = 2 2 * 2 = 4 …
9 * 9 = 81

```python
> > > i = 1
> > >
> > > while i <= 9:
> > >
> > > 	print 2, ' * ', i, ' = ', 2* i
> > >
> > > 	i = i  + 1
>
> 	
>>> def multi(a) : 
>>>
>>> 	i = 1
>>>
>>> 	while i <= 9 :
>>>
>>> 		print a, ' * ', i, ' = ', a * i
>>>
>>> 		i = i + 1

>>> multi( 3 )
```

### 3.3 지역변수, 전역변수

+) 시스템 프로그래밍 : 컴퓨터 CPU구조, 어셈블리어 어를 해석하여 컴퓨터가 알수 있게 기계어로 바꿈

지역변수 : 함수안에서 만들어진 변수 = 함수가 호출되면 만들어져서 함수의 실행이 끝날때 없어짐

전역변수 : 함수 밖에서 만들어진 변수 = 함수와 관계없이 꿋꿋이 존재

```python
>>> def d_is_10(): 
... 	d = 10
... 	print 'd'값은 ', d, '입니다'
...
>>> d_is_10()
d 값은 10 입니다
>>> d
Traceback (most recent call last) :
 File "<stdin>", line 1, in ?
NameError : name 'd' is not defined
```

------

=> d_is_10() 함수 실행중 d가 있었는데, 함수의 실행이 끝난 다음에 함께 사라져버렸기 때문

반대로, 전역변수는 함수 안에서 얼마든지 사용가능.

```
>>> x  = 10 	# 전역변수
>>> def printx() :
... print x
...
>>> printx()
10

>>> def e_is_10():
...     global e            # 전역변수
...     e = 10
...     print 'e 값은 ', e, '입니다'
...         
>>> e_is_10()
e 값은  10 입니다
>>> e
10

------

e_is_10() 함수가 실행되며, e라는 전역변수가 생성되고, 이 변수는 함수의 실행이 끝난다음에도 존재
```

### 3.4 반환문 (Return)

함수 = 함수에 값을 넣으면 계산값을 돌려준다.

```python
>>> def exam() :
...	ans = raw_input('1 + 2 = ')	# raw_input() : 사용자로부터 문자열 입력을 받는데 쓰이고, int() 	함수는 문자열을 정수로 바꿔준다. 
... return 1 + 2 == int(ans)
...
>>> exam()
1 + 2 = 3
True
>>> exam()
1 + 2 = 4
False
```

### 3.5 람다 (Lambda)

람다 형식 과 여러 함수

람다 형식 = 인공지능 or AutoCAD 설계 프로그램에서 쓰이는 Lisp언어에서 물려받음

함수를 한 줄만으로 만들게 해줌

```
lambda 인자 : 표현식
```

- 두 수를 더하는 함수

```
>>> def hap(x, y) :
...	return x + y
...
...
>>> hap(10, 20)
30
```

- 람다형식

> > > (lambda x,y : x + y)(10, 20)

30

**map() 함수**

------

map(함수, 리스트)

함수는 함수 & 리스트를 인자로 받는다

리스트로부터 원소를 하나씩 꺼내 함수를 적용시킨후 그 결과를 새로운 리스트에 담아준다

```
> > > map(lambda x : x ** 2, range(5))

#파이썬 2

[0, 1, 4, 9, 16]

> > > list(map(lambda x: x**2, range(5)))

#파이썬 2 및 파이썬 3

[0, 1, 4, 9, 16]
```

------

map 함수가 인자로 받은 함수 : lambda x : x ** 2

리스트 : range(5) => [0,1,2,3,4] 라는 list를 돌려준다

x ** 2 => x 값을 제곱하라는 연산자

map 함수는 list에서 원소를 하나씩 꺼내 함수를 적용시킨 결과를 새로운 list에 담는다.

0을 제곱하고, 1을 제곱하고, 2,3,4 를 제곱한것을 새로운 리스트에 넣어주는 것.

- reduce()

reduce(함수, 순서형 자료(=문자열, 리스트, 튜플))

```
>>> from functools import reduce 	#파이썬 3에는 써줘야함

>>> reduce(lambda x, y : x + y, [0, 1, 2, 3, 4])

10
```

**filter()**

------

filter(함수, 리스트)

: 파이썬의 필터는 리스트에 들어있는 원소들을 함수에 적용시켜서 결과가 참인 값들로 새로운 리스트를 만들어줍니다.

- 0 - 9까지 리스트중 5보다 작은것만 돌려주는 예제

```
>>> filter (lambda x: x < 5, range(10))

#파이썬 2

[0, 1, 2, 3, 4]

>>> list(filter(lambda x: x < 5, range(10)))

#파이썬 2 및 파이썬 3

[0, 1, 2, 3, 4]
```

- 홀수 필터를 돌려주는 필터

```
> > > filter(lambda x: x % 2, range(10))

#파이썬 2

[1, 3, 5, 7, 9]

> > > list(filter(lambda x: x % 2, range(10)))

#파이썬 2 및 파이썬 3

[1, 3, 5, 7, 9]
```

------

## 4. 자료구조

컴퓨터에서 영어를 사용하기 위해서는 알파벳 한 자 한 자 마다 숫자로 번호를 매겨서 처리함. 알파벳에 번호를 붙이는 규칙중에서 널리쓰이는 것 - ASCII 규약 존재.

ASCII ) A : 65 => 01000001(2) [숫자인지 문자인지 자료의 유형을 표시를 해주는 것이 바로 자료형]

기본적으로 python은 자료형을 자동으로 정해준다. 다른 프로그래밍언어에서는 프로그래머가 직접 정해준다. 또한 각 언어마다 제공해주는 자료형에 차이가 있다.

```
> > > type('A')		#문자열

<type 'str'>

> > > type(6)		#정수

<type 'int'>

> > > type(2.8)	#소수

<type 'float'>

> > > type(3+4j)	#복소수

<type 'complex'>

> > > type([1, 2, 3, 4])	#목록

<type 'list'>
```

- **복소수(Complex)**

python's feature

자료형 - 수치형(numbers), 순서형(sequence), 매핑형(mapping)

1. 수치형

-- 정수(int)

-- 큰 정수(long int)

-- 소수(float)

int형은 32비트로 -2147483648에서 2147483647까지의 숫자를 표현할수 있다.

int형이 32비트 인건 다른 언어에 비해 훨씬 큰 범위의 c의 long형과 같다.

long int : 표현범위가 무제한

float : 부동소수점수 (소수점이하표현)

1. **순서형 (sequence)**

-- 문자열(string)

-- 목록(list)

-- 튜플(tuple)

-- 사용자 정의 클래스

1. **매핑형**

-- 사전(dictionary)

-- class instance

-- c 확장형

------

### 4.1 문자열과 목록

- 문자열

순서형( sequence ) 에 속하는 string / list

```python
>>> x = 'banana'
>>> x[0]			# 0번 글자는?

'b'

>>> x[2:4]		# 2번부터 4번 앞(3번)까지는?

'na'

>>> x[:3]		# 처음부터 3번 앞(2번)까지는?

'ban'

>>> x[3:]		# 3번부터 끝까지는?

'ana'
```

- 문자열 내에 들어간 글자는 바꿀수가 없다.

> > > x = 'n' + x[1:]
> > >
> > > x

'nanana' => b를 n으로 바꾼것이아니라, 'n' 'anana'를 합쳐서 문자열 x에 새로 넣어준것이다.

- 목록

```python
>>> prime = [2, 3, 7, 11]	# 2, 3, 7, 11을 원소로 갖는 목록

목록 prime을 만듦

>>> prime.append( 5 )	# prime 에 원소 5를 추가
>>>
>>> prime

[2, 3, 7, 11, 5]
```

sort 함수 사용시, 정렬을 간단히 할수 있다.

```
>>> prime. sort()		# prime을 원소 크기 순으로 정렬
>>> prime
[2, 3, 5, 7, 11]
>>> del prime[4]		# prime의 4번 원소 삭제
>>> prime
[2,3,5,7]
>>> prime[0] = 1
>>> prime
[1, 3, 5, 7]
>>> orders = ['potato', ['pizza', 'Coke', 'salad'], 'hamburger']
>>> orders[1]
['pizza', 'Coke', 'salad']
>>> orders [1][2]
'salad'
>>> matrix = [[1, 2, 3], [4, 5, 6],[7, 8, 9]]
```

- 문자열을 목록으로 바꾸기

```python
>>> characters = []				#비어있는 목록 생성
>>> sentence = 'Be happy!'		
>>> for char in sentence:
...		characters.append(char)
...
>>> print(characters)
['B','e','','h','a','p','p','y','!']
```

- 성적표

```python
>>> chulsu = [90, 85, 70]
>>> younghee = [88, 79, 92]
>>> yong = [100, 100, 100]	
>>> minsu = [90, 60, 70]
```

> > > students = [chulsu, younghee, yong, minsu]

- 학생들의 성적 호출

```python
>>> for scores in students:
... 	print(scores)
...
[90, 85, 70]
[88, 79, 92]
[100, 100, 100]
[90, 60, 70]
```

- 개인의 성적을 더해 총점, 평균

```
>>> for scores in students:
...		total = 0
... 	for s in scores:
... 		total = total + s	#total변수 활용하여 숫자 누적
...		average = total / 3
... 	print(scores, total, average)
...
([90,85,70], 245, 81)
([88,79,92], 259, 86)
([100,100,100], 300, 100)
```

------

### 4.2 튜플(tuple)

list와 비슷한 자료형

- 두 변수의 값을 서로 변환

```
>>> a = 10
>>> b = 20
>>> temp = a		# a값을 temp에 저장 (temp = 10)
>>> a = b 			# b값을 a에 저장	   (a = 20)
>>> b = temp		# temp 값을 b에 저장(b = 10)
>>> print a, b
20 10
>>> c = 10
>>> d = 20
>>> c,d = d,c
>>> print c,d
20 10
>>> def magu_print(x, y, *rest): #마구찍어수
...	print x, y, rest
...
>>> magu_print(1,2,3,5,6,7,9,10)
1 2(3,5,6,7,9,10)
```

=> 인자 두개 이상만 주면 나머진 다 알아서 처리하는 함수

함수 정의시, 인자에 별표 붙이면, 이후 들어오는 것은 모두 튜플에 집어넣는 것.

위에선 (3,5,6,7,9,10)가 하나의 튜플로 묶였습니다.

- 튜플's 문법

```python
>>> t = ('a','b','c') 	#튜플 생성시, 괄호 써도 되고 안써도 ok

>>> empty = ()			#원소없는 튜플시 괄호필수

>>> one = 5,				#원소 하나만 가진 튜플생성시, 원소뒤 콤마(,)
>>> one 
(5,)
>>> p = (1,2,3)				#튜플은 리스트와 달리 원소값 바꿀수 없다.
>>> q = p[:1] + (5,) + p[2:]#문자열에서 했던것처럼 오려붙이는 방식 채택
>>> q
(1, 5, 3)
>>> r = p[:1], 5, p[2:]
>>> r
((1,), 5, (3,))
>>> p = (1, 2, 3)				 #튜플을 리스트로, 리스트를 튜플로 호환가능
>>> q = list(p)                  #튜플 p로 리스트 q를 만듦
>>> q
[1, 2, 3]
>>> r = tuple(q)                 #리스트 q로 튜플 r을 만듦
>>> r
(1, 2, 3)
```

### 4.3 사전(dict)

사전 자료형

dictionary

```python
>>> dic = {}	# dic이라는 이름으로 비어있는 사전을 만듬
>>> dic['dictionary'] = '1. A reference book containing an ...'
>>> dic['python'] = 'Any of various nonvenomous snake ...'
>>> dic['dictionary'] = '1. A reference ...'
>>> smalldic = {'dictionary' : 'reference', 'python' : 'snake'}
>>> smalldic['python']
'snake'
>>> smalldic
{'dictionary': 'reference', 'python': 'snake'}
```

- 사전 자료형 [ 키 : 값]

| 키(key)    | 값(value) |
| ---------- | --------- |
| dictionary | .         |
| python     | .         |
| zoo        | .         |

string, list, tuple 은 숫자로 된 index를 이용해 값을 조회

사전에서는 key를 이용한다는 것이 큰 차이점

사전 자료형은 해싱기법으로, 자료가 순서대로 저장되지 않는다

해싱기법 : 선생님이 시험지를 보니 만득이가 빵점이라 만득이를 찾아 혼내려하는데

"1번, 니가 만득이니" "아니요"

"2번, 니가 만득이니" "아니요"

"3번, 니가 만득이니" "아니요"

...

"40번, 니가 만득이니" "아니요"

=> 하지만 만득이 나와! 라고 하면 바로 찾는것과 같은 기법

```
>>> del smalldic['dictionary']
```

사전을 리스트로 바꾸는 방법

```
>>> family = {'boy':'choi','girl':'kim','baby':'choi'}
>>> family		#값을 넣는 순서대로 저장되지는 않음
{'girl' : 'kim', 'boy': 'choi', 'baby': 'choi'}
```

사전에 어떤 키의 존재 유무는 in을 써서 식별

```
>>> 'boy' in family
True
>>> 'sister' in family
False
```

------

### 4.4 연습문제

문제 1) 컴퓨터가 몇대 있고 연산할 프로그램도 몇개 있다. 가장 최적화 된 프로그램 대 컴퓨터 분배를 수행할수 있는 프로그램을 작성하시오

ex) pc 2대, 프로그램 수행시간은 각 3분, 5분, 2분이라면, pc 1는 3분, 2분짜리 프로그램을 수행하고 다른 컴퓨터는 5분짜리 프로그램을 수행하면된다.

```python
입력) computer : 2
	 program : 3, 5, 2
출력) pc 1 : 3, 2
	 pc 2 : 5
```

컴퓨터가 여러 대가 프로그램을 나눠 수행한다면, 각각 컴퓨터에게 같은 양의 일을 줘서 같이 끝내는 것이 좋다. 예에서는 총 10분간 할일을 컴퓨터 두 대에게 나눠주는 것이므로 각각 5분씩 일을 할당시키면 된다.

```python
해법1 )
프로그램 총 수행시간을 구한다.
총 수행시간을 컴퓨터 대수로 나누어 각각 컴퓨터의 평균 수행시간을 구한다. 
만약 평균 수행시간보다 오래 걸리는 프로그램이 있으면, 그냥 컴퓨터에게 준다
평균 수행시간보다 짧게 걸리는 것들은 : 평균 수행시간만큼 모아서 컴퓨터에게 준다
해법2 ) 
컴퓨터를 준비한다
컴퓨터에 할당할 프로그램을 크기순으로 정렬한다
프로그램을 모두 할당할 때까지, 가장 적은 용량 컴퓨터에 가장 큰 프로그램을 담는다.
#prg2com.py (program to python)

def prg2com(inlist, coms): #함수생성함수
	outlist = []
	sumout = []
	for x in range(coms):
		outlist.append([])
		sumout.append(0)
		
	inlist.sort(reserve=True)
	
	for bread in inlist:
		lowbasket = sumout.index(min(sumout))
		outlist[lowbasket].append(bread)
		sumout[lowbasket] += bread
		
	return outlist
	
print prg2com([3,15,6,22,13,2],3)
```

해석) 함수생성 part

prg2com 함수를 하나 정의해두고. 마지막 줄에 해당함수를 호출하는 형태로, prg2com 함수는 inlist와 coms라는 두개의 인자를 받아 outlist를 결과로 돌려준다.

prg2com()함수는 inlist와 coms라는 두개 인자를 받아 outlist를 결과로 돌려준다.

문제에서 입력과 출력을 아래로 한다고 했는데 예제에서는 단순히 리스트와 변수를 입력받고, 리스트를 출력토록했다.

해석) 함수내부 해석

outlist - 바구니 ( 컴퓨터 들의 목록 ).

sumout - 바구니 한개 마다 담긴 빵 (수행할 프로그램)의 합계를 갖는 목록.

coms - 함수의 인자로 받은 컴퓨터 대수( 바구니의 개수 ).

coms 값이 3이면 위의 for 문을 수행한후

outlist는 [],[],[]와 같이 되고, sumout은 [0,0,0]이 됨.

나중에 함수가 모두 실행되면, 결과값이 [[22], [15,3,2],[13,6]] 과 같이 담기고, 그 때 sumout은 [22,20,19]와 같이 됨

```python
inlist.sort(reverse=Ture)
```

함수 인자로 받은 inlist를 sort() 메서드를 써서 정렬하되

reverse인자에 True를 지정함으로써 정렬이 역순(오름차순) 으로 이루어지도록한다

```python
inlist.sort()
inlist.reverse()
```

각각의 빵을 바구니로 분배.

```python
for bread in inlist:
	lowbasket = sumout.index(min(sumout))
	outlist[lowbasket.]append(bread)
	sumout[lowbasket] += bread
```

가장 가벼운(가장용량이 적은 컴퓨터)바구니를 구하기 위해 min(sumout)을 했고, 그 바구니의 인덱스를 구하여 lowbasket이라 했다.

바구니는 outlist와 sumout에서 같은 인덱스를 쓴다는 점을 이용하기위한 것으로,

예를 들어 outlist전체가 [[22],[15],[13,6]]인 상태라면 sumout은 [22,15,19] 가 되어있을 듯.

현재 가장 가벼운 바구니는 15가 들어있는 바구니

## 5. 모듈

모듈 : 프로그램의 꾸러미 // 남이 만든 부품을 가져다 쓰는 사용법

```python
>>> import math		# math 모듈 불러오기
>>> math.pi 		# math 모듈의 변수 pi 값은?
>>> import calenda
>>> calendar. pmonth9 (2013, 7)
>>> from Tkinter import*
widget = Label(None, text='I love pyhon!')
widget.pack()
```

### 5.1 모듈 가져오기 (import)

= 수입하다(다른 프로그램으로부터 데이터를 가지고오다)

```
import 모듈 					#모듈전체를 가져
from 모듈 import 변수 나 함수	 #모듈 내에서 필요한 것만 콕 찍어 가져오는법
>>> import Tkinter
>>> Tkinter.widget = Tkinter.Label(None, text='I love Python!')
>>> Tkinter.widget.pack()
```

=> "모듈.변수" 의 형식 // 선호 why 덮어쓰다가 겹쳐버릴수 있다.

```python
>>> from Tkinter import *
>>> widget = Label(None, text='I love Python!')
>>> Tkinter.widget.pack()
```

모듈내 이름을 콕 찍어 가져오는법으로 import* 이라 써서 전부 다 가져왔다.

```
del 모듈
```

불러온 모듈 삭제법

```
reload(모듈)
```

한번 import한 모듈을 다시 불러오기 함수

### 5.2 여러가지 모듈

- sys 모듈

\#>>> 인터프리터가 우리의 명령을 기다린다는 의미로, 프롬프트라고 한다.

```
>>> import sys
>>> sys.psl 			# 현재의 프롬프트
'>>>'
>>> sys.psl = '^^;'		# 이걸로 바꿔라
^^; print 'hello'
hello
^^; print 'hello'
hello
^^; 5 * 3
15
^^;
^^; sys.exit()
```

- os

------

```
>>> import os 
>>> os.getcwd()
'C:\\Python27'
>>> os.listdir('C:\Python27')
['DLLs','Doc', 'include', 'Lib', 'libs', 'LICENSE.txt', 'NEWS.txt', 'python.exe', 'pythonw.exe', 'README.txt', 'tcl', 'Tools', 'w9xpopen.exe']
>>> os.rename('README.txt','readme.txt')
>>> os.listdir('C:\Pyhton27')
['DLLs','Doc', 'include', 'Lib', 'libs', LICENSE.txt', NEWS.txt', 'python.exe', 'pythonw.exe', 'readme.txt', 'tcl, 'Tools', 'w9xpopen.exe']
>>>
```

현재 작업 디렉토리 파일들 중 README.txt를 readme.txt로 바꿔줬다.

- string

------

```
>>> import string
>>> string.capitalize('python')				# 첫 글자를 대문자로
'Python'
>>> string.replace('simple', 'i', 'a')		# 'simple'의 'i' 를 'a'로,
'sample'
>>> string.split('break into words') 		# 문자열을 분리한 리스트 구함
```

=> 기본적인 문자열 연산을 제공함

- re

------

string 모듈보다 좀더 전문적으로 문자열을 다룰 수 있는 re( regular expression : 정규 표현식) 모듈도 있다.

마침표 . 는 문자 아무거나 한개를 뜻하고, 별표 * 는 한개이상의 문자를 뜻한다.

현재 디렉토리에서 p 다음에 나오는 이름을 갖고 있는 파일들을 모두 찾아주게 된다.

```
>>> import re,glob
>>> p = re.compile('.*p.*n.*')
>>> for i in glob.glob('*'):
...		m = p.match(i)
...		if m:
...				print m.group()
...
pycon.ico
python.exe
pythonw.exe
w9xpopen.exe
```

=> 작성할 프로그램에서 어떤기능을 필요로 하는가에 따라 어떤 모듈을 사용할지 결정한다음, 사용설명서를 보면서 모듈의 사용법을 익혀 프로그래밍하면된다.

- random 모듈

직접 시도해보기 전에는 어떤 숫자가 나올지 모르는 것 : 난수 (random number)

// 복권 추첨, 음악 cd 재생순서섞기, 주사위 던지기

```
>>> import random
>>> random.random()		# random() 함수는 0-1숫자중 하나 뽑아 돌려줌
```

주사위 처럼 1-6까지 정수 중 하나를 무작위로 얻으려면?

```
>>> random.randrange(1,7) 	#"1이상 7미만의 난수"
6
>>> random.randrange(1,7)
2
>>> range(1,7)		#내장함수 range 
[1,2,3,4,5,6]
>>> abc = ['a', 'b', 'c', 'd', 'e']
>>> random.shuffle(abc)		#shuffle 함수
>>> abc
['a','d', 'e', 'b', 'c']
>>> random.shuffle(abc)
>>> abc
['e', 'd', 'a', 'c', 'b']
>>> abc
['e', 'd', 'a', 'c', 'b']
>>> random.choice(abc)
'a'
>>> random.choice(abc)
'd'

>>> menu = '쫄면', '육개장', '비빔밥'
>>> random.choice(menu)
'쫄면'
>>> random.choice([True, False])
True
>>> random.choice([True, False])
False
```

### 5.4 matplotlib

matplotlib : 플롯(그래프)을 그릴 때 많이 쓰이는 파이썬 라이브러리.

```
from pylab import *
x = linspace(-1.6, 1.6, 10000)
y = lamda x: (sqrt(cos(x))) * cos(200*x) + sqrt(abs(x)) - 0.7)*\
	pow((4 - x*x), 0.01)
plot(x, list(map(f,x)))
show()
```

pylab - linspace 함수는 주어진 숫자 범위내에서 동일 한 간격으로 떨어진 숫자들을 쉽게함

```
>>> import pylab
>>> pylab.linspace(5,7,20)
>>> pow(2, 3)
8
```

sqrt : 제곱근. cos : 코사인을 구하는 함수

## 6. 파일

```
>>> f = open('C:\\python_newbie\\Python_for_Fun.txt)
>>> f.read()
'Programming is fun.\nVery fun!\n\nYou have to do it yourself.'
#\n : 문자열 출력시 '줄 바꿈' 의미
```

파일에 글쓰기

```
>>> letter = open('C:\\python_newbie\\letter.txt', 'w')
>>> letter.write('Dear Father,')
>>> letter.close()
```

=> 파일에 데이터가 원래 있을 때 'w'모드로 파일을 열면 원래 있던 데이터가 없어져버린다.

파일에 들어있는 데이터를 지우지 않고 내용을 추가하려면 a+모드를 지정해줘야한다.

```
>>> letter = open('C:\\python_newbie\\letter.txt','a+')
>>> letter.write('\n\nHow are you?')
>>> letter.close()
```

6.1 한줄 씩 다루기

------

한줄씩 읽을 때는 readline()을 사용한다

```
>>> f = open('C:\\Python27\\readme.txt')
>>> f.readline()
'This is Python version 2.7.1\n'
>>> f.readline()
'============================\n'
```

텍스트를 원하는 줄 수 만큼만 읽어 들일 수 있다.

```
>>> f = open('C:\\Python27\\readme.txt)
>>> for x in range(5):
... 	line = f.readline()
... 	print line,			#print line이라고 하면 두줄씩 넘기므로 (,)필요
...
this is Python version 2.7.1
>>> f = open('C:\\Python27\\readme.txt')
>>> lines = f.readlines()	#readlines() 통해 파일을 읽으면 각 줄이 각 리트스 원소로 들어가 파일 전체가 lines라는 리스트에 쏙 담긴다. 이후 sys모듈을 이용해 lines에 들어가는 것들을 꺼내 쓸수 있다.
>>> import sys
>>> sys.stdout.writelines(lines[:5])
this is Python version 2.7.1
```

6.2 파일을 입맛대로

- pickle

```
>>> users = {'kim':'3kid9', 'sun80':'393948', 'ljm':'py90390'}
>>> f = open('users.txt', 'w')
>>> import pickle
>>> pickle.dump(users, f)
>>> f.close()
```

=> id와 password를 user라는 사전에 담았다. user.txt file을 새로 열어 f라고 하고 다음에는 오이지 pickle^^; 모듈의 dump를 사용했다.

- glob

```
>>> import glob
>>> glob.glob('*.*')
['INSTALL.LOG', 'LICENSE.txt', 'NEWS.txt', 'py.ico', 'pyc.ico', 'pycon.ico', 'python.exe', 'pythonw.exe', 'readme.txt', 'UNWISE.EXE', 'w9xpopen.exe']
>>> glob.glob('*.txt')
['LICENSE.txt', 'NEWS.txt', 'readme.txt']
```

=> * 는 무슨 글자든 몇글자든 상관없다

디렉토리(폴더)에 들어있는 파일들을 다 보려면 * . * 를 한다

파일명에 상관없이 확장자가 txt인 파일을 모두 보고 싶으면 *.txt 라 한다.

- os.path

```
>>> import os.path
>>> files = glob.glob('*') 		
>>> for x in files:
...		if os.path.isdir(X):
...			print('%s <DIR>' % x)
...		else:
...			print(x)
#glob.glob('*')을 해서 얻어진 파일 목록들을 files라는 리스트로 넣어 주고, for문을 통해 파일명을 하나씩 출력하되 그것이 디렉토리면 <DIR>을 붙여 출력함
```

## 7. 객체지향

객체지향 : 프로그램을 작성할시 좀더 사람이 생각하는 방식에 가깝게 할수 있게 도와주는법

이전 프로그래밍 : 프로그램이 어떤일 을 하고 나서 그다음엔 어떤일들을 하라는 식으로 컴퓨터가 해야할일 알려주기 바빳지만, 이러한 객체지향 프로그래밍에서는 프로그램 작성 대상이 되는 실제 세계의 사물(객체)을 그대로 표현하고, 그것들이 어떻게 움직이는 지 정해주고 나서야 비로소 그 객체들에게 일을 시킨다. 이를 통해 이러한 프로그래밍을 잘 사용하면, 보다 좋은 프로그램을 빨리 만들고 수정키도 편하다

JAVA 와 C++ 이 대표적인 객체지향 언어로,

JAVA는 프로그램 작성시 무조건 클래스를 만들기에 처음공부하기에는 조금 부담스럽지만 몇달 공부하면 머리가 객체지향적으로 바뀜.

C++은 꼭 객체지향적으로 프로그래밍 할 필요는 없지만 배우기 어렵다. 파이썬 배우기쉬워

### 7.1. 클래스와 인스턴스

ex) '내가 엊저녁에 먹은 사과 다섯 개 중 두번째 것'

사과 - 클래스(부류), 두번째 것 - 인스턴스 (실체)

```
>>> class Singer:				#가수를 정의하겠다.
...		def sing(self):			#노래하기 매서드
...			return "Lalala~"
...
>>> taeji = Singer()
>>> taegi.sing()
'Lalala~'
```

**class 클래스명**

형식으로 시작해서 그다음부터 그 클래스의 성질이나 행동정의

클래스 내부에 정의된 함수를 method 매서드 라 부른다

**인스턴스명 = 클래스**

sing매서드는 Singer라는 클래스가 하는 행동을 정의한다. 이후 taeji라는 객체를 만들었다.

**객체.메서드**

Singer 클래스에 sing메서드를 정의해줬기에 Singer 클래스에 속한 taeji 객체도 sing 메서드를 사용할수 있다. 다시 말해 가수는 노래할수 있으니 태지라는 가수도 역시 노래를 할 수 있는것

### 7.2 변수와 메서드

------

실제 세계 존재하는 실체(instance) = 객체(object)

객체들의 공통점을 개념적으로 나타낸 것 = 클래스(class)

=> 어떤 클래스 생성시 그 객체가 갖는 성질과 그 객체가 하는 행동을 정의해주면 됌

```
class Amazon:			# 아마존클래스가 가진 힘, 기술, 체력, 에너지
	strength = 20		4가지 성질은 변수로 나타냈고
	dexterity = 25
	vitality = 20
	energy = 15
	
	def attack(self):	# 공격 행위는 메서드로 나타냈다.
		return 'Jab!!!'
>>> import diablo2
>>> jane = diablo2.Amazon()
>>> mary = diablo2.Amazon()
```

매서드를 정의 할 때와 사용시 차이가 있다

def attack(self); // self라는 인자를 받는다

jane객체 메서드 호출시 그냥 attack()

- self

self : 바로 그 클래스의 객체를 가리키며, jane과 mary가 같은 attack 메서드를 가지므로 서로 구별하기 위해 사용한다.

### 7.3 상속( inheritance )

: 어떤 클래스가 다른 클래스의 성질을 물려받는것

=> 어떤 클래스를 만들때 처음부터 모든 것을 새로 만들 필요없이 핵심적인 성질을 가진 다른 클래스로부터 상속을 받아 사용

```
class Person:
eyes = 2
nose = 1
mouth = 1
ears = 2
arms = 2
legs = 2

def eat(self):
	print '냠냠'
def sleep(self):
	print '쿨쿨'
def talk(self):
	print '주절주절'
class Student(Person):
	def study(self):
		print '열공열공'
```

student 클래스는 person 클래스를 상속받았다.

student 클래스를 눈 코 입 부터 하나하나 다시 만들어주지 않아도 person성질을 모두 물려받아 갖는다. 이에 study 메서드 하나만 더 써주어 마무리.

스크립트 복사시, 나중에 사람과 학생 클래스에 옷 색깔 이라든지 싸우다 같은 것들을 추가하고 싶어진다면, 그 때마다 사람클래스와 학생클래스를 각각 다 수정해야한다.

하위 클래스( 상속받은 클래스 ) <=> 상위 클래스 ( 상속해준 클래스 )

A Student **'is a'** Person ( 학생은 사람이다 )

### 7.4 객체 속의 객체

```
class Fridge:					# 냉장고와 음식클래스를 지닌 fridge.py 모듈생성.
	def_init_(self):
		self.isOpened = False
		self.foods = []
	def open(self):
		self.isOpened = True
		print '냉장고 문을 열었어요'
	def put(self, thing):
		if self.isOpened:		# 변수 isOpened
			self.foods.append(thing)	# 음식 list : foods
			print '냉장고 속에 음식이 들어갔네'
		else:
			print '냉장고 문이 닫혀있어서 못넣겟어요'
	def close(self):
		self isOpened = False
		print '냉장고 문을 닫았어요'
class Food:
	pass
>>> import fridge
>>> f = fridge.Fridge()
>>> apple = fridge.Food()
>>> elephant = fridge.Food()
```

객체는 또 다른 객체를 포함한다. 객체지향 프로그래밍은 이런 것들을 composition (합성)이라고 한다

'has - a' 관계

### 7.5 특별한 메서드들

메서드 : 우리가 클래스를 만들면서 그안에 만들어 넣은 함수

예제로 book class를 갖는 bookstore(책방) 모듈을 만들어 보았습니다.

- **init** **메서드** (초기화)

```
class Book:
	def setData(self, title, price, author): 
		self.title = title
		self.price = price
		self.author = author
		
	def printData(self):
		print '제목 : ', self.title
		print '가격 : ', self.price
		print '저자 : ', self.author
		
	def __init_(self):
		print '책 객체를 새로 만들었어요~'
```

\#책클래스의 매서드로는 책 제목, 가격 저자와 같은 자료들을 입력할 때 사용할 setData()와 이런 자료들을 출력해주는 printData()를 만들어 주었다.

`__init__` : 어떤 클래스의 객체가 만들어질 때 자동으로 호출되어 그 객체가 갖게될 여러가지 설정을 정해주는 일을 한다.

```
>>> import bookstore
>>> b = bookstore.Book()
책 객체를 새로 만들었어요~ 
```

Book() 으로 Book 객체를 만들자마자 초기화 메서드가 실행되었다. 나머지 setData와 printData 메서드들은 다음과 같이 사용한다

```
>>> b.setData('누가 내 치즈를 먹었을까', '300원', '미키')
>>> b.printData()
제목 : 누가 내 치즈를 먹었을까
가격 : 300원
저자 : 미키
```

이제 `__init__` 메서드를 사용해 실제로 객체를 초기화 시켜보겠다.

`__init__` 메서드를 아래와 같이 수정해보겠다.

```
def __init__(self, title, price, author):
	self.setData(title, price, author)
	print '책 객체를 새로 만들었어요~'
```

객체 생성시 제목, 가격, 저자를 인자로 받아서 setData 메서드에게 넘겨주도록했었다.

초기화 메서드에서 직접 변수를 다뤄도 상관없지만 setData 메서드를 미리 만들어둔것을이용.

```
>>> reload(bookstore)
>>> b2 = bookstore.Book('내가 먹었지롱', '200d원', '미니')
책 객체를 새로 만들었어요~
```

\#참고 - 초기화메서드를 다른 객체지향언어에서는 생성자(constructor)라고 부른다.

- **__ del __ 메서드 (소멸자)**

`__init__` 메서드와 반대로 객체가 없어질 때 호출되는 메서드도 있다.

이런 것들을 소멸자(destructor)라고 하는데 파이썬에서는 `__del__` 메서드가 소멸자의 역할을 맡는다.

del 문을 사용해 객체를 소멸시킬수 있다. 만들어 둔 객체가 더이상 필요치 않는다면 파이썬에서 알아서 처리해주기도한다.

어떤 객체가 없어지기전에 뭔가 처리를 필요로 한다면 소멸자가 유용하게 쓰일것

- **__ repr __ 메서드 (프린팅)**

printData와 같은 메서드 호출대신, 파이썬의 기본문인 print문을 사용해 책 제목을 찍어보겠다.

이런일을 가능케 해주는 것은 바로 `__repr__` 메서드이다.

책 클래스에 아래와 같이 `__repr__` 메서드를 추가해라

```
def __repr__(self):
	return self.title
```

return문 사용

`__repr__` 메서드는 '문자열'을 return 한다고본다.

책방모듈을 재적재하고 새책을 만들어 테스트하라

```
>>> b3 = bookstore.Book('나도 좀 줘', '100원', '쥐벼룩')
책 객체를 새로 만들었어요~
>>> print b3
나도 좀줘
```

도형 만들기

```
class Shape : 
	area = 0
	def __add__(self, other):
		return self.area + other.area
```

=> 두 도형의 넓이를 더하는 `__add__` 메서드를 생성했다. 두개의 객체 self와 other를 인자로 받아 그 둘의 넓이를 더한 값을 돌려주는 일을 하게했다.

```
>>> a = shape.Shape()
>>> a.area = 20
>>> b = shape.Shape()
>>> b.area = 10
>>> a + b
30
```

도형 a & b 를 연산자 + 로 더했더니 두 도형의 넓이가 더해졌다.

이와 같이 특별한 메서드를 사용해 연산자가 하는 일을 정의하는 것을 연산자 중복(overload)라고 한다. 연산자 중복을 이용하면 사용자가 직접 만든 클래스의 객체에 대해서도 연산자를 쓸수 있다. 마치 파이썬 자체에서 제공하는 자료형처럼

`__add__` 메서드를 직접호출해도 결과는 같다

- **__ cmp __ 메서드 ( 비교 )**

두 개의 객체를 비교하는 비교 연산자 (>,<,==) 를 쓸 수 있도록 해주는 메서드를 살펴보면서 정리를 한다.

class 에 `__cmp__` 메서드 추가

```
def __cmp__(self, other) : 
	if self.area < other.area :
		return -1
	elif self.area == other.area : 
		return 0
	else : 
		return 1
```

두 객체 self & other 를 비교해서 self 가 크면 1을 other이 크면 -1을 돌려주고, 두수가 같은 땐 0을 돌려주도록 했다. 이제 숫자를 비교하듯이 두 객체를 그냥 비교하면, shape 모듈을 재적재하고 새로운 객체를 만들어 각각 area값을 정해준다음 두 객체를 비교한다

```
>>> if c > d : print 'c가 더 넓어요~'
...
c가 더 넓어요~
```

## 8. 예외처리 (try, except)

프로그래밍 언어를 배울 때에는 직접 따라해보고, 만들어보는 것이 중요하다.

```
>>> print 방가~
File "<stdin>", line 1 
	print 방가~
		  ^
SyntaxError: invalid syntax
File "<stdin>", line 1
```

파일 1번째 줄에서

```
print 방가~
	  ^
```

^로 표시된 부분에

```
SyntaxError: invalid syntax
```

잘못된 구문 으로 인해 오류가 발생했음 => 문법이 틀렸다는 얘기

표준입력 (standard input), 즉 키보드를 통해 입력되는것을 의미한다.

대화식으로 작성하지 않고 파일로작성해서 실행시켰다면 그 파일의 이름이 나왔다는 것

이렇게 파이썬은 프로그램 실행중에 문제가 생기면 어디가 잘못됐는지 판단해서 우리에게 알려준다. 그러면 우리는 그부분을 잘 작동하도록 하면 된다

그런데 프로그램을 짜다보면 평소에는 잘 돌아가다가 가끔식 문제가 생긴다

- 두수를 곱하고 나눠서 더하는 함수

```
>>> def f (a,b):
...		return (a * b) + (a / b)
...
>>> f(4,2)
10
```

- 두 번째 인자로 0을 넘겨주면 난리남

```
>>> f(3,0)
Traceback (most recent call last):
 File "<stdin>", line 1, in ?
 File "<stdin>", line 2, in f
ZeroDivisionError : integer division or modulo by zero
```

=> 정수를 0으로 나누는 오류가 발생

```
>>> def f(a,b):
... if a and b:
...   return (a * b) + (a / b)
... elif a:
...	  return '불능'
... else:
...   return '부정'
>>> print f(3,0)
불능
>>> print f(0,0)
부정
>>>
```

- 파이썬 버전에 따라서는 아래와 같이 오류가 발생하기도한다

```
>>> f(300000, 500000)
Traceback (most recent call last):
  File "<stdin>", line 1, in ?
  File "<stdin>", line 3, in f
OverflowError: integer multiplication
```

인자로 받은 두수의 곱이 정수형으로 처리하기에 너무 큰 값이라 오류발생

```
>>> f(이십, 오)
#%$^*#<%@??? --;
```

프로그래머의 의도와 동떨어진 상황이 발생하는 것을 예외 (exception)라고 해서, 예외가 발생하면 어떤 조치를 취할 것인지 정해주는것.

- 예외 처리 가능토록 함수를 수정한다

```
>>> def f(a, b):
... try:
...	  if a and b:
...		return (a * b) + (a / b)
...   elif a:
... 	return '불능'
...   else:
... 	return '부정'
...   except:
...  	return '똑 바로 살아라'
```

기본 문장들을 try밑에 넣어주고, 예외가 발생했을 때 처리할 부분은 except 밑에 넣어주면됨.

일단 시도해보다가 문제가 생기면(except) 처리해주는 것이다.

예외는 오류(error) 보다 더 넓은 개념이긴 하지만 지금은 비슷하게 생각한다