"""
i, k = 0, 0

for i in range(2, 10, 1) :
    for k in range(1, 10, 1) :
        print( i, '*', k, '=', i*k)


## 10 * 10 크기의 숫자를 예쁘게 출력해라 ##
import random
import random as rd
from random import randrange, randint
from random import *
# count = 0
for _ in range(10) :
    for _ in range(10) :
        num = rd.randint(0,99) # randint(0,99)
        print("%2d " % (num), end = '') # 하나이상은 괄호 쳐야하므로 가능한 괄호 쳐라!
        count += 1
    print() # 짧은 코드 연습시 언더바 활용해 코드 짜는 습관들여
"""

