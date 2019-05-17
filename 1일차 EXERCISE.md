# 1일차 EXERCISE

---

print("안녕")

#print {base}
#함수명{패키지}
install.packages("randomForest")
#패키지 설치
library(randomForest)

#변수 : 변할수 있는수(가독성을 위해 ) 데이터가 저장되는 장소 (메모리내 어딘가)
a<-3
b<-2
#assign 기호
#상수 : 변할수 없는 수 
#스칼라 : 0차원, 1,2,3,...길이가 1인 데이터 
#벡터 : 1차원, 길이가 1이상인 데이터집합 
#r 에서는 벡터단위로 자료를 처리



x<-1
x2<-1.5
x
x2
x3<-x+x2
x3
#NA:상수(값이 없음을 나타냄)
#NA(시험응시 자체를 안한것) 0(시험을 봤는데 0점 맞은것)

one<-70
two<-80
three<-90
four<-NA

print(one+two)

is.na(four) #is: 있느냐없느냐 유무확인
#NULL:변수가 초기화 되지 않은 상태 
#NULL : 빈 바구니(변수) NA : 바구니 조차없음

iseven<-NULL #변수는 있는데 초기값이 정해지지않은 상태

```

if(조건){
  iseven<-TRUE
}
else{
  iseven<-FALSE
}

```

X<-NULL // is.null(x)

a<-"hi" or a2<-'hi'

```

TRUE & TRUE (and)
#&는 둘다 참->참

TRUE | TRUE (or)
#|는 둘 중에 하나 이상 참->참

!TRUE
#!은 반대 연산자

```



```
#factor : 범주형(category, data가 사전에 정해진 유형으로만 분류되는 경우)
#범주형 : 명목형, 순서형
#수치형 : factor(범주형)의 반대 ex) 점수, 온도
#명목형 : 데이터간 크기 비교가 불가능 ex) 좌파 우파
#순서형 : 소중대 / 학점(크기비교가능)

#범주형 - 명목형 ex)
sex<-factor("f",c("m,","f")) #c: 벡터화 시켜주는 함수 combine(스칼라값을 합해)
sex
```

