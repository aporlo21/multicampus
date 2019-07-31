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



