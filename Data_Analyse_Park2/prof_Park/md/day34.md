# day 34



### iterator _ 반복자

: 데이터 순차적 처리..를 가능케 해주는 객체

ex) for i in range(100): # 0 - 99 값을 하나하나 꺼낼수 있는 iterator를 만들어줌

숫자가 많으면 메모리 증식됨 => 성능 약

iterable_ 반복 가능한 객체 '__iter__'

문자열 딕셔너리 _ 여러 문자가 들어가 있고 이들을 순차적 호출사용하는 객체

ex) dir함수내에 (리스트, 셋, 딕셔너리, 문자열,,, etc,,,) 집어넣으면 

반복가능한 객체 '__iter__' 포함되어져 있다

### validation : 검증용 data

 validation : 검증용 data

 validation _ ( 1000 - 1499 ) in cats vs dogs 

 전체 data => train / test ( 7 : 3 )
 train data => train / validation
 validation : train data 의 일부분을 => validation 내에서 모델의 성능 1차적 평가
 data 가 너무 작을 validation 작업 필요 x
 그럴 당시 validation 작업 대신, cross validation = k-fold = k개 만큼 나누어 처리 진행

 train / validation 비교 시 acc 차이가 나는 경우 : overfitting 간주, 
 데이터가 방대할시 이런 sol 로써 overfitting 을 방지한다 

# Dense

 Dense (계층) : FullyConnectedLayer 생성시 호출하는 함수 
 I : 4, O : 8 => 연결강도 : 32
 ex) 성별판별기 = ( 머리카락 길이x1 + 신장x2 + 혈액형x3 ) * w3
 Dense (출력 뉴런수[고정],
        속성이름(입력뉴런) = 값[input_dim:입력뉴런수],
       init ( weight ) : normal/uniform,
       activation
       default = linear [결과값 여과없이 도출],
        relu,sigmoid
       softmax : 다중분류시 사용 )

 ex) Dense<1, input_dim=3, act=sigmoid // weight = 3
 ex) Dense<3, input_dim=4, act=softmax // weight = 12 
 ex) Dense<4, input_dim=5, act=relu // weight = 20

# CNN plus Summary

 Convolution Layer : filter 사용해서 이미지로 부터 feature 추출 을 위해 활용
 Conv2D (32(필터의 개수), (5,5) kernal size[filter], activation func) 
 필터와 원본 이미지 사이에서는 각각의 요소 끼리 합성곱이 이루어지고
 stride optioning 을 통해 kernal 이동을 이루어지게 한다
 padding optining : ( SAME : 64 x 64 -> 60 x 60 [by 5x5 kernal] 소실되는 문제를 방지해줌
                     or Valid  ) [ 경계처리 목적 ]
 MaxPooling 
 filter : 사실상 weight 역할을 담당한다
 필터하나가 입력이미지를 돌아다니면서 연산을 통해 결과를 통해 출력이미지를 도출해낸다
 필터의 개수... 가중치의 개수 를 결정하는 작업이므로, 중요하다



도형 data CNN modeling
0. 진행 순서
1. 문제정의
2. 데이터수집
3. 모델생성
4. 학습
5. 평가



### 1. 문제 정의 

다중분류에 해당한다

입력 : 3가지 도형 이미지 circle, rectangle, triangle

출력 : 각 도형 확률 

### 2. 데이터 수집 (데이터부족 -> 데이터 생성)

이미지 파일 학습과정에서 이미지 파일 생성 (증식) 이 가능하게해주는 함수 

ImageDataGenerator 가 제공(케라스제공)

preprocessing_image package_ImageDataGenerator

flow_from_directory func 을 통해 data 증식이 가능

flow_from_directory(image 경로(subclass 형태로 종식되어져있어야함__circle까지),

target size(행,렬) (이미지크기...현재 이미지 사이즈들 각기 다달라,

)) 

256,256

keras API

https://keras.io/preprocessing/mage/#imagedatagenerator-methods

func(_, = , = ) = : default, _ : 필수



## 강화학습

start - goal [최단거리]

컴퓨터가 start지점(1,1)에서 취할수 있는 행동은 위, 아래, 왼쪽, 오른쪽으로 이동하는것 네가지 입니다. 이때의 행동을 *action*이라고 이야기하고, 현재의 위치(1, 1)을 *state(상태)*라고 정의합니다. 

각 action이 좋은 행동인지 아닌지 판단 할 수 있는 근거(feedback)가 필요하고 , 이때의 feedback을 *reward(보상)*라고 정의합니다.

강화학습은 reward를 통해 현재 state에서 어떤 action을 취하는게 좋은지 학습하는 과정으로 이해 할 수가 있습니다

각 action마다  그 action이 취했을 때 얼마나 좋은지를 측정하는 값*(Q-value)* 이 학습됩니다.

즉, 선택은 action에 Q-value 중 가장 높은 Q-value를 가지는 action을 취하는 것입니다. 



feedback  : action 이 좋은 행동인지 아닌지 판단할수 있는근										

=> reward : 수

reward 를 설정해보자 

이동했을때 제자리면 -2, NOR -1 



즉 , 달성하고자 하는 목표에 대해서 각 state에서 action에 대한 최적의 q - value를 학습하는것이라 할수 있고, 이는 현재 state에서 미래 보상의 합을 최대로 하게끔 학습하면서 우러진다

어떤 state 에 대한 value function 은 아래와 같이 정의 할수 있다

우리가 학습하고자하는 정책 파이의 optimum은 모든 state 에 대해여 각 value function 을 최대로 하는 action을 선택하는것이다. 

