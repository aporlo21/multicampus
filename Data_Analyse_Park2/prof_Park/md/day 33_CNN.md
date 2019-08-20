# day 33

## CNN

뉴럴넷 

가중치업데이트

p5 ) n= 얼마정도 쓰겠다 learning rate [반영률]

Deep Neural Network

: 통상적으로, 계층을 3개이상으로 모델설계하는 경우 

p 8 ) deep한 설계 이유

L1 ) 필터로 지정한 특징추출

L2 ) 추출된 특징을 경함하여 좀더 확대 된 이미지 분류가능

L3 ) 또다시 결합을통해 거의 원본에 가까운 이미지 분류완성

EX) 출입 통제 시스템 설계 - 사진이 부족한 문제 지닐시, [데이터 증식작업 (이미지처리)]

잡음, 스크래치, 색상 변화, 이동



P 14 ) feed forward artifical neural network : 순방향 작업 진행

내부적으로 pulling 과정이 이루어져있다



P 16 ) CNN ) dropout 시 일부 뉴런들만 사용하겠다

p 18 ) x OR o 분류 cnn  모델 ... training 이루어지는 과정 ,

p 19  ) 데이터 증식 .... traslation 위치이동 scaling 크기 조절 rotation 회전 weight 



p26 ) cnn layer 어떤 작업하는가  - 위치는 다르지만 좌우 이미지의 경계 부분같다 ... 이 목적에 대한 근거를 찾자... 결과를 내자

전체를 비교하는게 아니라 ... 각자의 이미지를 보고 접근하자 

cnn: 필터 생성 작업

필터의 갯수 지시

필터 == 특징 ( 각자의 이미지 자체 )



p27 ) 필터가 3개다 (각기 다른 이미지 , 특징, 필터를 지님 )

슬라이딩 ... : 이동

왼쪽 상단부터  :  요소들끼리 합성곱연산

p 28 ) 한칸씩 옮겨간다 

패딩 : 외곽에 채우는것 

한씩씩 이동한다 

맨 아래까지 끝까지 이동



이미지와 필터 간 합성곱의 계산 

정확히 일치해야 1 이 나온다

 

feature map : 7 * 7 필터 일치률을 (-1) ~ 1 까지로 표현된다 ( 합성곱 계층의 입출력데이터 )

relu() : feature map에 대해서 relu() 적용 , max만 도출 max(0,x) => 0보다 큰 수들만 도출되어짐 

각각의 feature map 하나하나 마다 적용시켜 max 를 도출시킨다 



풀링계층 ( ) = matrix 연산을 사용하지 않고 각 픽셀에서 하나의 값을 뽑아내는 과정 convolution 의 후속 과정이 아닌 별도의 개념으로 정의 

: 보통 max pooling 적용 [ 컨볼브된 특징들을 더욱 압축시켜 표현할수 있는방법]

2 * 2  

p 68 ) 왼쪽  대각선 필터에 대해서 풀링 과정 거친 결과 

Convolution을 거쳐서 나온 activation maps이 있을 때,

이를 이루는 convolution layer을 resizing하여 새로운 layer를 얻는 것

원본이미지에 대해서 합성곱을하고 각 피쳐에 대해서 relu를 통한 값에 max pooling을 한다 

p70 ) 1. 컬러이미지(224,244,3) => 64 개의 필터 적용 // 이미지 인식 

overfitting 방지를 위해 [필터] 규격에 맞는 범위중 가장 큰값 도출 ... [resizing work]

input - conv Layer - maz pooling - Conv L 2 - max pooling - Fully Connected - output 



연산량이 많아지면 ,,,, vanishing gradient 

sol ) dropout

sparse < = > dense [밀집형 처리] => inception model (google net)

ResNet : 건너뛰기식 연산 모델링  ( skip connection  ) [두칸건너뛰어]



cf ) iot 환경에서는 각각의 전자제품내에 컴퓨터 내장되어서 데이터 양산,,, 모든 사용자 건물 빋딩 등 모든 제품에서 데이터 나 나오고 ,,,이에 따라 가장 적정한 동작을 하게된다 ( 5-10 상용 보편화 )

gateway,, 센서들내장된다 ,... 라즈베리파이. 아두이노 

이안에 ai model 넣고 센서에서수집된 데이터를 기반으로 판단하여 적정한 동작 서비스를 한다 

경량화 프로그램이 중요하다... 컨트롤러 ==> 장치



FCN 에 걸려진 데이터 ... flatten 함수 통해 평탄화 시켜준 형태로 재구조화 시켜준ㄷ ㅏ...

이들 중 softmax 를 통해 최대값 도출  

feed for war NNL ... 정규화된 계층 ,,,, 비선형함수 ,,,, class 를 predcit 해야함으로 ( o OR x ) 

=> training medel 생성과정

ex) p 73 ) mnist ;;;; [ 0-9 의 클래스로 ohe 되어있는 상태 ... y ] w(가중치) 존재한다 

weight training 





- softmax 함수 수식 

ref - day 33 _ CNN ) score ... label 

![softmax ììì ëí ì´ë¯¸ì§ ê²ìê²°ê³¼](https://t1.daumcdn.net/cfile/tistory/99C470335A0FA8E81F)



## cola's CNN blog post

ex) 떨어뜨린 공의 교훈

어떤 높이에서 땅에 공을 떨어뜨리는 경우

이는 오직 한차원의 움직임만을 가지고 있다

떨어뜨릴당시 공이 멀리 떨어질시 그공이 착륙한 지점에서 다시 떨어뜨릴 가능성은? 

- 첫 낙하후, 확률 f(a) 로 출발점으로부터 떨어진 단위를 착륙시킵니다

f : 확률 분포이다

- 이후, 우리는 공을 위로 가져와서 처음으로 상륙한 지점위의 다른 높이에서 떨어뜨린다

새로운 시작점에서 공을 떨어뜨려 b만큼 더 움직이는 확률은 g(b) 입니다. 

여기서 g는 다른 높이에서 떨어지면 다른 확률 분포가 될수 있다. 

![img](http://colah.github.io/posts/2014-07-Understanding-Convolutions/img/ProbConv-fagb.png)



- 첫 낙하의 결과를 수정하여 공이 거리 a 를 가짐을 알게되면, 공이 총거리인 c 가 되기위해 두번째 낙하에서 이동한 거리도 b로 고정된다 그래서 이 사건의 확률은 간단히 f(a) - g(b) 가 된다
- c 를  a / b 로 나누고 각방도의 확률을 합산하는 모든 가능한 방법을 고려한다 

![img](http://colah.github.io/posts/2014-07-Understanding-Convolutions/img/ProbConv-split-21.png)





- ...  f(0)⋅g(3) + f(1)⋅g(2) + f(2)⋅g(1)  ...



![img](http://colah.github.io/posts/2014-07-Understanding-Convolutions/img/ProbConv-OnePath.png)

- 첫 낙하후, 중간위치 a에 확률 f(a) 로  상륙한다. 그것이 a에 도착하면 c위치에 착륙하는 확률 g(c-a)지님



![img](http://colah.github.io/posts/2014-07-Understanding-Convolutions/img/ProbConv-Reverse.png)

- 공이 낙하를 시작한 곳으로부터 특정거리 x에 떨어질 확률 : f(x)
- 그 후, 착륙 지점으로부터 거리 x를 시작할 가능성 : f(-x)

![img](http://colah.github.io/posts/2014-07-Understanding-Convolutions/img/ProbConv-BackProb.png)

- 공이 두번째 낙하이후 c 위치에 있는 것을 알면 이전위치가 a일 확률은? 

g(- (a-c) ) = g ( c - a )



ex) 컨볼루션은 오디오 조작에 사용되기도한다

두개의 스파이크가 있는 함수를 사용할수 있지만 다른 모든 곳에서는 0을 사용하여 에코를만든다 

double spiked 기능이 슬라이드 되면서 한 스파이크가 먼저 특정 시점에 도달하여 해당 신호를 출력 사운드에 추가하고 나중에 또 다른 스파이크가 발생하여 두 번째 지연 복사본이 추가된다 



- 이미지 처리 ( 2차원 함수 )

많은 중요한 이미지 변환은 '커널' 이라는 매우작은 로컬 함수로 이미지 함수를 컨볼빙하는 컨볼루션이다

커널은 이미지의 모든 위치로 미끄러지고 새로운 픽셀을 부유하는 픽셀의 가중 합계로 계산한다

 

### RNN plus

cf ) 기존의 Recurrent Neural Networks(RNNs)는 일반 Neural Networks에 비교해서, 데이터의 이전 상태 정보를 **“메모리(Memory)”**

하지만 시계열 데이터의 현재 시간 이전 정보뿐만 아니라, **이후 정보**까지 저장해서 활용할 수 있다면 더 좋은 성능을 기대할 수 있다. 예를 들어 “푸른 하늘에 OO이 떠있다.”라는 문장에서 OO에 들어갈 단어를 예측하고자 한다면, 우리는 앞의 정보인 “푸른”, “하늘”이라는 정보를 가지고 OO에 들어갈 단어가 “구름”이라고 예측할 수도 있지만, 뒤의 정보인 “떠있다.”라는 단어까지 함께 고려하면 더 높은 확률로 정답이 “구름”이라는 것을 예측할 수 있을 것이다.

Bidirectional Recurrent Neural Networks(BRNNs)을 이용하면, 이렇게 이전 정보와 이후 정보를 모두 저장할 수 있다

 **전방향 상태(Forward States)** 정보를 가지고 있는 Hidden Layer와 **후방향 상태(Backward States)** 정보를 가지고 있는 Hidden layer가 있고, 이 둘은 서로 연결되어 있지 않다. 

 단지, Forward hidden layer와 Backward hidden layer에 input 값을 **반대 방향(opposite)으로 집어넣고**, Output layer 값은 두방향의 Hidden layer에 모든 input이 **적용된 후에 계산한다는 점**이 차이점이다. 



### Why Embedding?

1. **차원을 축소할 수 있다.** 
   범주형 자료를 one-hot-encoding으로 표현할 경우 n-1개의 차원이 필요한 반면, 
   embedding을 활용하면 2,3차원으로도 자료를 표현할 수 있다. 
2. **범주형 자료를 연속형으로 표현할 수 있다.** 
3. **의미를 도출하기에 용이하다** 
   vector space로 나타낼 경우, 직관적으로 이해할 수 있는 형태를 띠므로 의미를 도출하기에 편리하다. 

### Neural network entity embedding 활용예시

1. **추천 시스템**이나 **군집 분석**에 활용할 수 있다. embedding vector space 상에서 가까운 데이터들은 비슷한 특성을 공유하고 있다.
2. supervised 머신러닝의 **input 데이터**로 사용할 수 있다.
3. 범주간의 관계를 **시각화**하기 위해 활용할 수 있다.
   learned embeddings를 t-SNE를 활용해 나타낼 수 있다. 
   t-SNE는 데이터를 시각화에 많이 쓰이는 방법으로, 고차원 데이터를 차원축소하는 방법 중 하나이다. 
   실제 `Rossman Sales Prediction`경진대회에서 이 방법을 사용해 독일의 도시들을 embedding하여 시각화한 사례가 있다. 그림을 보면 알겠지만, 실제 독일 지도에 적힌 도시들의 위치와 t-SNE로 표시한 도시들의 위치가 매우 비슷한 것을 볼 수 있다. 이처럼 t-SNE는 시각화에 매우 강력한 툴이 될 수 있다.

---

---

### 

# day33_CNN Review

x data = (tf.float32, [None,28,28,1])

y data = (tf.float32, [None,10])

keep_prob = (tf.float32) 



개요 : CNN 

conv2d[컨볼루션 계층] - relu[렐루 계층] - maxpooling [풀링]

첫 번째 계층의 weight 부여 

```python
w1 = tf.Variable(tf.random_normal([3,3,1,32]))
# (3,3) [filter, mask, kernal] 계층 : 1 흑백, 32개

L1 = tf.nn.conv2d(x, w1, strides=[1,1,1,1], padding = 'SAME')
# stride : sliding, 1칸, 1줄
# padding : 외곽 한칸씩 증식

L1 = tf.nn.relu(L1)
L1 = tf.nn.max_pool(L1, ksize=[1,2,2,1], strides=[1,2,2,1], padding='SAME')
# padding : (2,2)로 풀링하려 할때 마춰주기 위한 작업 

# k(ernal) size=[1,2,2,1]
# (2,2) 짜리를 다음것에 대해서 max pooling 하면서 지나가겠다
# ksize 커질수록 .... 정확도 떨어져 










```

- agent = model 
- 

