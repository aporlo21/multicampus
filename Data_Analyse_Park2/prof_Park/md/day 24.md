# day 24

1. 데이터 변환 

(1) 표준화

표준화 .. 데이터 변환 

특이값, 이상치가 포함되어 있지 않은 온전한 데이터 

이상치 데이터에 대한 적절한 처리가 선행되어져야함 

standard scaler 

(각 데이터 - 평균) / 표준편차 

- 더미변수 (dummy var)

: 주어진 데이터로부터 어느범주에 해당하면 0 or 1 부여 

각 셀마다 범주형변수를 가지도록 하는 'dummy var'

ex) 직업=== 학생 회사원 군인 => 더미변수 



(2) 정규화  ( 0 -1 사이로 표현 )

(data - min) / (max - min)

minmax scaler



(3) 이산화

binarizer : 연속형 => 이항변수  // 기준값정해,,, 기준값보다 작으면 0, 크다 1

범주형자료 - threshold 문지방, 한계점 

onehotencoder : male - 1, female - 0

a , b, c, d, e 구간별 학점매기기 

10000, 01000, 00001 

객체만들고 fit 함수 





(4) 변수 개수 축소 ( feature selection )



(5) 차원 감소 



(6) 시그널 변환( 음성// 푸리에 변환(주기를 뜨는 주파수), 웨이블 변환 ) 



- 모델만들시 오류 처리 

- NAN값을 
- w 가변(updating) 과정 ,,, cost 함수값을 줄여나가는 과정으로 진행 
- 데이터 x 의 변화폭이 넓다 => 모델링시 튄다 === NAN발생
- 흔한경우 데이터간 격차가 심할때
- 모델 생성시, 가장좋은것은 데이터가ㅣ 변수가 두개 x1,x2 w1w1
- 한쪽으로 넓은 타원형형을 취한다(zero-centered data )
- zero-centered data => normalized data = 폭을 줄여서 폭을 정규화시킨다

 

- overfitting 

모델이 트레이닝 데이터에만 너무 과하게 맞춰졋다

일반화되지 않고 특정데이터에 대해서만 특징을 잘 모델링한 모델

solution ) data - 많을수록좋다 / variable - 적절히... 유 사한 변수는 묶는다 

regularization - 결과값이 구불구불이 평탄하게 나오게끔하는 방식 



- binary classification = logistic regression

0, 1 로 나누어 확장 



- softmax : 가장 큰값 

 전체분에 특정 레이블이 될 확률값이 된다. 

Softmax(소프트맥스)는 입력받은 값을 출력으로 0~1사이의 값으로 모두 정규화하며 출력 값들의 총합은 항상 1이 되는 특성을 가진 함수이다.


다항분류기 - 분류기가 여러개 형성 

  Softmax function은 Neural network의 최상위층에 사용하여 Classification을 위한 function으로 사용한다. NN의 최상위 계층에 사실 Sigmoid function을 사용하여 실제값과 출력값을 차이를 error function으로 사용해도 된다. 

하지만 Softmax function을 사용하는 주요한 이유는 결과를 확률값으로 해석하기 위함이다. 

나온 확률 출력값을 one hot encoding 을통해 

값을 0 -1 사이로 반환 

ex)  a - 1 b - 0 c - 0  =========> 가장 큰값 1로 반환 

![img](https://t1.daumcdn.net/cfile/tistory/2649EE3757FE300021)

수식 설명 :   모든 레이블에 대한 시그모이드 값을 더한 값을 각 레이블에 대한 시그모이드 값을 나눈다. 



- cost func  :  hf - y 예측값 - 실제값 
- D ( s, y)
- logistic classification 효과적 

Y ( Lable 실제값 ) 값과 softmax (Y) 차이를 최소화하는 형태로 만들어져야함 



ex) a, b, c // y ( one hot encoding 으로 1 , 0 , 0 으로 도출되어진상태 )



![img](http://www.birc.co.kr/wp-content/uploads/2018/01/softmax-cost-function.png)



- bayes thorem  

[확률론](https://ko.wikipedia.org/wiki/확률론)과 [통계학](https://ko.wikipedia.org/wiki/통계학)에서, **베이즈 정리**([영어](https://ko.wikipedia.org/wiki/영어): Bayes’ theorem)는 두 [확률 변수](https://ko.wikipedia.org/wiki/확률_변수)의 [사전 확률](https://ko.wikipedia.org/wiki/사전_확률)과 [사후 확률](https://ko.wikipedia.org/wiki/사후_확률) 사이의 관계를 나타내는 정리다. [베이즈 확률론](https://ko.wikipedia.org/wiki/베이즈_확률론) 해석에 따르면 베이즈 정리는 사전확률로부터 사후확률을 구할 수 있다.

베이즈 정리는 [불확실성](https://ko.wikipedia.org/wiki/불확실성) 하에서 의사결정문제를 수학적으로 다룰 때 중요하게 이용된다. 특히, 정보와 같이 눈에 보이지 않는 무형자산이 지닌 가치를 계산할 때 유용하게 사용된다. 전통적인 확률이 연역적 추론에 기반을 두고 있다면 베이즈 정리는 확률임에도 귀납적, 경험적인 추론을 사용한다.



## Simple Thresholding

threshold 함수를 사용한 이진화입니다. 전체 이미지에 하나의 임계값을 적용합니다.



-역정규화

-역표준화 (ydata 처리)