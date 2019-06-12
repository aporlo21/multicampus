## 4개의 랜던한 숫자를 리스트에 저장한 후, 합계를 계산하자.
import random
aa = [] # 빈 리스트 준비
for i in range(100) : # range(0, 4, 1) # i -> 0, 1, 2, 3 자동변환
    num = random.randint(0,99)
    aa.append(num) # 빈리스트

print(aa)