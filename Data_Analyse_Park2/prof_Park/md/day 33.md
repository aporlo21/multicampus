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

- 첫 낙하의 결과를 수정하여 공이 거리 a 를 가짐을 알게되면, 공이 총거리인 c 가 되기위해 두번째 낙하에서 이동한 거리도 b로 고정된다 그래서 이 사건의 확률은 간단히 f(a) - g(b) 가 된다
- c 를  a / b 로 나누고 각방도의 확률을 합산하는 모든 가능한 방법을 고려한다 
- 

