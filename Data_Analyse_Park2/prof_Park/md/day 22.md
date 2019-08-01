# day 22

KNN : 이웃의 평균을 구해 넣어라 (ex 유유상종) 

머신러닝 ,,, 

k - means : k개 만큼의 평균을 구해서 그룹핑(clustering) 할때 사용하는 기법 // 비교사학습

[클러스터링 대표적 알고리즘]

클러스터의 중심점 구해 

초기점(3개의 그룹(centroid point)) 을 랜덤리하게 부여 

주변점들끼리 모아 처리 작업

각 클러스터 끼리 거리계산 

각 거리가 고정될때까지 무한루프돌린다

som, art : data를 받으면서 모델을 만드는 방식 

(유클리디안 거리) 

(유클리드의 호제법) 뺏셈, 나눗셈을 원리를 응용





이웃 축

train / test



regression 이용한 classification

다변량 선형회귀모델 ( multivariate linear regression model )

(독립변수 : 영향주는 변수

, 종속변수 : 영향받는 변수 )



만한 에너지 함수를 보면 1/2mv^2(운동에너지)

, 1/2kx^2(탄성에너지), I^2/R(전기에너지) 처럼 제곱꼴로 나타내지거든요.



**understanding cost function**

binary classification

cost func 을 매끄럽게 할 필요가 있다 

e때문에 매끄럽지안항 /// 이를 지수함수의 역관계인 로그함수를 취함으로써 상쇄 시켜준다 

실제값 y = 0 or 1 



1.

df['species'].value_counts()

각각의 value가 몇 개 있는지 확인해주는 메서드

 

박조은 선생님의 Tip

pd.DataFrame(df['species'].value_count())로 묶어서 데이터 프레임으로 관리한다.

 

2.

df['species'].nunique()

-> 유니크한 value의 개수를 나타냄

 

3.

df.describe() - 수치형 데이터 통계값 보여줌

df.describe(include = 'all')하면 데이터 형식에 관계없이 보여줌



## 표준화 정규화 개념뿌시기(개뿌)



### 딥러닝의 일반적 절차

1. **적절한 네트워크 선택**

   1) **구조(structure)** : Single words vs Bag of Words, etc.

   2) **비선형성(nonlinearity) 획득 방법** : ReLu vs tanh, etc.

2. **그래디언트 체크** : 네트워크를 구축했는데 그래디언트 계산이 혹시 잘못될 염려가 있으므로 잘됐는지 체크해봅니다

3. **학습 파라메터 초기화** : 초기화 방법에도 여러가지가 있으므로 적절히 선택합니다

4. **학습 파라메터 최적화** : Stochastic Gradient vs Adam, etc.

5. **과적합 방지** : dropout vs regularize, etc.



### 비선형성획득 활성함수

뉴럴네트워크의 개별 뉴런에 들어오는 입력신호의 총합을 출력신호로 변환하는 함수를 **활성화함수(activation function)**라고 합니다. 활성화함수 유무는 초창기 모델인 **퍼셉트론(perceptron)**과 뉴럴네트워크의 유일한 차이점이기도 하죠

활성화함수는 대개 **비선형함수(non-linear function)**를 씁니다. 

### 시그모이드

로지스틱 함수로도 불립니다. 원래 수식 및 미분식은 아래와 같습니다.

σ(x)=11+e−xσ′(x)=σ(x)(1−σ(x))σ(x)=11+e−xσ′(x)=σ(x)(1−σ(x))

시그모이드 함수의 범위는 [0,1][0,1]이고요, 그래프의 모양은 아래와 같습니다.

[![source: imgur.com](http://i.imgur.com/HpSpWal.png)](http://imgur.com/HpSpWal)

시그모이드 함수를 1차 미분한 그래프는 아래와 같습니다.

[![source: imgur.com](http://i.imgur.com/WpKD6kW.png)](http://imgur.com/WpKD6kW)

시그모이드 함수는 개별 뉴런이 내뱉어 주는 값을 S자 커브 형태로 자연스럽게 활성화를 해주기 때문에 예전부터 인기가 좀 있었습니다. 다만 입력값이 -5보다 작거나 5보다 클 경우에는 그래디언트 값이 지나치게 작아지고(=이렇게 되면 학습이 잘 안되죠), exp 연산이 다소 무겁다(=학습이 느려지죠)는 단점이 있습니다.

아울러 σ(x)σ(x)의 범위는 [0,1][0,1]로서 모두 0 이상의 값을 지닌다는 문제가 있습니다. 이게 단점이 되는 이유는 바로 학습 속도와 관련이 있는데요. 예컨대 아래와 같은 뉴런이 있고 활성화함수 ff가 시그모이드라고 가정해봅시다.



### 하이퍼볼릭탄젠트

하이퍼볼릭탄젠트는 시그모이드 함수의 **크기와 위치를 조절(rescale and shift)**한 함수입니다. 시그모이드 함수와의 관계식과 미분식은 각각 아래와 같습니다.

tanh(x)tanh′(x)=2σ(2x)−1=ex−e−xex+e−x=1−tanh2(x)tanh(x)=2σ(2x)−1=ex−e−xex+e−xtanh′(x)=1−tanh2(x)

하이퍼볼릭탄젠트의 범위는 [−1,1][−1,1]입니다. 그래프의 모양은 시그모이드 함수와는 달리 0을 기준으로 대칭인 점을 확인할 수 있습니다. 이 때문에 하이퍼볼릭탄젠트는 시그모이드를 활성화함수로 썼을 때보다 학습 수렴 속도가 빠르다고 합니다.

[![source: imgur.com](http://i.imgur.com/xaQpDt4.png)](http://imgur.com/xaQpDt4)

하이퍼볼릭탄젠트를 1차 미분한 그래프는 아래와 같습니다. 시그모이드함수와 마찬가지로 xx가 -5보다 작거나 5보다 크면 그래디언트가 0으로 작아지는 점을 볼 수 있습니다. 이것이 하이퍼볼릭탄젠트의 단점입니다.

[![source: imgur.com](http://i.imgur.com/0mVuW9h.png)](http://imgur.com/0mVuW9h)

### Rectified Linear Unit (ReLU)

ReLU는 아래와 같이 정의됩니다.

f(x)=max(0,x)f(x)=max(0,x)

그래프의 모양은 아래와 같습니다. xx가 양수이기만 하면 그래디언트가 1로 일정하므로 그래디언트가 죽는 현상을 피할 수 있고, 미분하기도 편리해 계산복잡성이 낮습니다. 실제로 시그모이드나 하이퍼볼릭탄젠트 함수 대비 학습수렴 속도가 6배나 빠르다고 합니다.

[![source: imgur.com](http://i.imgur.com/SAxRPcy.png)](http://imgur.com/SAxRPcy)

다만 위 그림에서 확인할 수 있듯 0을 기준으로 대칭인 모양은 아닙니다. 아울러 xx가 음수이면 그래디언트가 무조건 0이 된다는 단점이 있습니다. 이를 극복하기 위해 **Leaky ReLU**가 고안되었습니다.



### Leaky ReLU

Leaky ReLU의 식은 아래와 같습니다.

f(x)=max(0.01x,x)f(x)=max(0.01x,x)

그래프의 모양은 다음과 같습니다. xx가 음수일 때 그래디언트가 0.01이라는 점을 제외하고는 ReLU와 같은 특성을 지닙니다.

[![source: imgur.com](http://i.imgur.com/SXq4jmJ.png)](http://imgur.com/SXq4jmJ)

### Exponential Linear Units (ELU)

ELU는 ReLU의 특성을 공유하고요, 그래디언트가 죽지 않는다는 장점이 있다고 합니다. 다음 수식과 같습니다.

f(x)=xifx>0f(x)=α(ex−1)ifx≤0f(x)=xifx>0f(x)=α(ex−1)ifx≤0

### Maxout Neurons

MN은 다음과 같습니다. 연결된 두 개의 뉴런 값 중 큰 값을 취해 비선형성을 확보합니다. 다만 활성화함수를 적용하기 위해 필요한 연산량이 많다는 단점이 있습니다.

f(x)=max(wT1x+b1,wT2x+b2)f(x)=max(w1Tx+b1,w2Tx+b2)

## 학습 파라메터 초기화

각 층의 가중치(weights)와 편향(bias) 등 학습 파라메터는 초기값 설정이 매우 중요하다고 합니다. 뉴럴네트워크가 풀려는 문제 자체가 non-convex optimization이기 때문에 시작점에 따라 최적지점을 찾지 못하게 될 수도 있습니다.

또한 학습 파라메터의 초기값을 적절하게 설정할 경우 그래디언트 조절에도 유의미한 효과를 낸다고 합니다. 이와 관련해 시그모이드 함수의 1차 미분 그래프를 다시 보도록 하겠습니다.

[![source: imgur.com](http://i.imgur.com/WpKD6kW.png)](http://imgur.com/WpKD6kW)