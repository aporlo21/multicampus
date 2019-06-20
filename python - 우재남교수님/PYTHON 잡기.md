# PYTHON 잡기

1. **Python 시작하기**

Python - 프로그램 만들기 or Website 생성용도

>>> a + b
>>> pigdad	

>>> a + ' ' + b
>>> pig dad

> >> family = ['mother', 'father', 'gentleman', 'sexy lady']

>>> len(family)
>>> 4

> >> family[3]

>>> family[2]
>>> 'gentleman'

> >> family.remove('gentleman')

>>> family
>>>
>>> ['mother', 'father', 'sexy lady']

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

​	Python  설치 폴더 아래에는 새로 폴더를 만들어 저장시킨다. with py확장자. ex) D:\Python27 아래 exam 폴더, triangle.py로 저장.

예제 1.5



2. **제어구조**

프로그래밍의 핵심요소인 분기와 반복 python 내 사용법



**2.1 반복문 ( while )**

>>> num = 1
>>> while num <= 100:
>>> ...     print(num)
>>> ...     num = num + 1
>>> ...



**2.2 조건문 ( if )**

 c = 15 * 5
>>> d = 15 + 15 + 15 + 15 + 15
>>> if c > d:                      # 만약 c가 d보다 크면
>>> ...     print('c > d')             # 'c > d'라고 출력한다.
>>> ... elif c == d:                   # 그렇지 않고 c와 d가 같다면
>>> ...     print('c == d')            # 'c == d'라고 출력한다.
>>> ... else:                          # 이도 저도 아니면
>>> ...     print('c < d')             # 'c < d'라고 출력한다.
>>>
>>>
>>>
>>> c == d

* elif : 여러 개의 조건을 검사해서 그 중에서 맘에 드는 것을 고를수 있다.
* c == d : c & d의 값이 같다. 



**2.3 반복문 ( for )**

for 문은 list과 같은 순서형 자료를 이용해서 원하는 명령을 반복할 때 사용.

* for문 이용한 가족들의 이름과 문자열 길이 출력

> >> family = ['mother', 'father', 'gentleman', 'sexy lady']

>>> for x in family:                    # family라는 목록의 각각의 항목 x에 대하여:
>>> ...     print('%s %s' % (x, len(x)))    # x와 x의 길이를 출력하라.
>>> ...

> mother 6
> father 6
> gentleman 9
> sexy lady 9



* range

>>> range(2, 7)         # 파이썬 2
>>> list(range(2, 7))   # 파이썬 3

> [2, 3, 4, 5, 6]

