## day 14

### Summary for kaggle pptx

#### Feature Engineering



**ratio feature** : A per B

**Product feature** : A x B : -Feature importance 를 봤을 때, 상위 feature 들 중 numerical feature 끼리 곱하여 추가 함.

**Addition feature** : A + B : -중요한 feature 끼리 더하거나 빼서 새로운 feature 생성.

**Subtraction feature** : A - B

**Aggregation features** 

Category 와 numerical feature 의 조합으로 생성하며, 

Category 각 그룹당 mean, median, variance, standard deviation 을 feature 로 사용

![1563524861518](C:\Users\user\AppData\Roaming\Typora\typora-user-images\1563524861518.png)

Numerical features) Lightgbm 은 missing value 를 빼고 tree split 을 한 다음, missing value 를 각 side 에 넣어봐서 loss 가 줄어드는 쪽으로 missing value 를 분류

-0 로 채우지 말고, 내장 알고리즘 쓰기로 결정.

-(+) Infinite value 는 1.2 * max value 

-(-) Infinite value 는 1.2 * min value 



Categorical Features) NAN’ 이라는 새로운 category 를 만들어서 채움



**Hyper parameter tuning**

* Grid Search
* Randomized Search
* Bayesian Optimization

**정형 데이터에서 좋은 성적**:  **EDA**

LSTM(Emebedding + meta features)

Natural language processing 의 강자는 = > 성실한, 불성실한 질문을 찾아라

**Ensemble**



**자연어  문장**

Tokenization, Word embedding

**Numerical value**

Categorization Scaling, etc

**Time series**

Raw data,

Feature based

**Image**

RGB, grey, More  channel, etc



Processing

문제설정 - 데이터 수집 / 데이터 전처리 - EDA - Insight - Feature Engineering - Model - Model Assessment - feature ability check - discussion

데이터 탐색 >> 파라미터 튜닝 