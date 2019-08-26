# day 38

Many to One (stacked RNN)



## Feature Engineering

 feature가 유용한지 아닌지 확인하는 과정을 특징 선택(feature selection) 또는 특징 추출(feature extraction) 이라고 한다. 해당 과정은 기존 입력을 토대로 새로운 입력 데이터를 만들기 때문에 보통 learning 과정 전에 실행된다.

## Feature Selection(특징 선택)

불필요한 특징을 제거하여 간결한 특징 집합을 만드는 것이다. 

분류 모델 중 Decision Tree 같은 경우는 트리의 상단에 있을 수록 중요도가 높으므로 이를 반영하여 특징 별로 중요도를 매길수 있다. 

회귀 모델의 경우 forward selection과 backward elimination같은 알고리즘을 통해 특징을 선택 가능하다.

## feature extraction(특징 추출) 

특징 추출이 특징 선택과 다른 점은 원본 특징 들의 조합으로 새로운 특징을 생성하는 것이다.

가장 대표적인 알고리즘에 PCA(Principle Component Analysis)가 있다. PCA를 간단히 설명하면 각 변수(Feature)를 하나의 축으로 투영시켰을 때 분산이 가장 큰 축을 첫번째 주성분으로 선택하고 그 다음 큰 축을 두번째 주성분으로 선택하고 데이터를 선형 변환하여 다차원을 축소하는 방법이다.