# day 27

- for 문 기초 

text = text.lower()
tokens = word_tokenize(text)
dic = {}
for token in tokens:
    if len(token)>=3:
        if token not in dic:
            dic[token] = 1
        else:
            dic[token] += 1
dic
            



**대수의 법칙**, **라플라스의 정리**는 큰 [모집단](https://ko.wikipedia.org/wiki/모집단)에서 무작위로 뽑은 표본의 [평균](https://ko.wikipedia.org/wiki/평균_(통계학))이 전체 모집단의 평균과 가까울 가능성이 높다는 [통계](https://ko.wikipedia.org/wiki/통계)와 [확률](https://ko.wikipedia.org/wiki/확률) 분야의 기본 개념이다.



```
 모집단의 특성치
     - 모집단 분포 특성을 규정짓는 척도
        . 관심의 대상이 되는 모집단의 대표값(참값)
```

```
2. 통상,  모수는 알려져있지 않음 (미지의 상수로써 취급)

  ㅇ 모수(미지의 상수)에 대한 통계적 추론
     - 모집단에서 추출한 표본 특성을 분석하여, 모수에 대해 추측/추론을 하는 과정

  ㅇ 통계적 추론 방식의 구분
     - 통계적 추정 : 모수를 표본을 통해서 추정하는 것을 말함
        . 표본으로부터 전체 모집단의 모수에 대해 추정하는 통계적 추론 방식

     - 가설 검정 : 모수에 대한 가설을 설정하고, 표본을 통해 가설의 기각/채택을 결정하는 규칙
        . 통계적 모형(모집단 특성 모형)에 대한 가설을 채택,기각할지를 판단하는 통계적 절차


3. 비 모수적 방법

  ㅇ 가정과 무관하거나, 확률분포와 무관하거나, 
     확률분포에 의한 평균,표준편차 등이 의미 없는 경우에,
     주로 사용되는 통계적 추론 방법을 말함
```



## CNN

Fully Connected Layer[1](http://taewan.kim/post/cnn/#fn:1) 만으로 구성된 인공 신경망의 입력 데이터는 1차원(배열) 형태로 한정됩니다. 한 장의 컬러 사진은 3차원 데이터입니다. 배치 모드에 사용되는 여러장의 사진은 4차원 데이터입니다. 사진 데이터로 전연결(FC, Fully Connected) 신경망을 학습시켜야 할 경우에, 3차원 사진 데이터를 1차원으로 평면화시켜야 합니다. 사진 데이터를 평면화 시키는 과정에서 공간 정보가 손실될 수밖에 없습니다. 결과적으로 이미지 공간 정보 유실로 인한 정보 부족으로 인공 신경망이 특징을 추출 및 학습이 비효율적이고 정확도를 높이는데 한계가 있습니다. 이미지의 공간 정보를 유지한 상태로 학습이 가능한 모델이 바로 CNN(Convolutional Neural Network)입니다.



## overfitting (과적합)

차수가 올라갈수록 선형이 구불구불해짐

=> 차수를 낮추자 ( regularization ) // feature의 갯수를 줄안다 ( 중요치않은 feature 제거 )



overfitting => 많은 feature 가 존재한다 ( high variance )

underfitting => 많은 feature 가 존재한다 ( high  )

sol ) 

1. 정규화 ( 모든 특성은 사용하지만 고차원에 해당하는 weight 에 대해서 잘 동작 하지 않도록 인위 적으로 (크게) 설정하는것 ) => cost (실제값과의 오차차이) 값을 줄이기위해 세타값이 0에 가까운 값을 할당되어진다 
2. 방대한 training data
3. 



**PCA 도 가능** 



PCA는 데이터의 **분산(variance)**을 최대한 보존하면서 서로 직교하는 새 기저(축)를 찾아, 고차원 공간의 표본들을 선형 연관성이 없는 저차원 공간으로 변환하는 기법입니다. 이를 그림([출처](https://stats.stackexchange.com/questions/2691/making-sense-of-principal-component-analysis-eigenvectors-eigenvalues))으로 나타내면 아래와 같습니다. 

2차원 공간에 있는 데이터들이 하나의 주성분(PC1)을 새로운 기저로 선형변환된 걸 확인할 수 있습니다. 

여기에서 핑크색 표시가 돼 있는 사선축이 원 데이터의 분산을 최대한 보존하는(=데이터가 가장 많이 흩뿌려져 있는) 새 기저입니다. PCA의 목적은 바로 이런 축을 찾는 데 있습니다.

[![source: imgur.com](http://i.imgur.com/Uv2dlsH.gif)](http://imgur.com/Uv2dlsH)



**Feature Extraction**



**변수추출(Feature Extraction)**은 기존 변수를 조합해 새로운 변수를 만드는 기법으로, 단순히 일부 중요 변수만을 빼내는 **변수선택(Feature Selection)**과는 대비됩니다. 변수추출에는 기존 변수 가운데 일부만 활용하는 방식이 있고, 모두 쓰는 방식이 있는데 PCA는 후자에 해당합니다. 아울러 PCA는 기존 변수를 **선형결합(linear combination)**해 새로운 변수를 만들어 냅니다.



ref) vggNet, ResNet => image 



- 환경변수

 = 윈도우즈 시스템 환경 설정 (시스템환경 설정 or 사용자 환경 설정)

공통적용 - 시스템변수 

cmd - java 입력

경로 추가 .... ex) 차가 도로다닌다 도로 포장 ... 도로 만드는 작업  ,,,어디서든 자바 사용가능 

bin내에 java.exe 이 파일을 실행할수 있지만 bin내에서만 실행된건데 이를 환경변수 저장 경로설정함으로써 해당위치 가 아니더라도 해당 java프로그램을 사용이 가능한 길을 뚫어주는 작업에 해당함.



## RecurrentNeuralNetwork 

- 정의 : 순환신경망
- 