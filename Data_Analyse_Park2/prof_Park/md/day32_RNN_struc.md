# day32

- bi - direction RNN 
- stacked shaped RNN 



time-step 

sequence 

sequence-length



이전의 셀들의 영향을 받게 된다 

5개의 time step 이 잇다

 



- RNN Network 구조

1) one to many : 입력 1  출력 n 개

2 many to many ... ex) chat bot main role for future 



d차원 벡터 : word 단위 one hot encoding 

d = 1000

ex) 나는 학교에 갑니다

각각의 단어들이 ohe 된다 ( 0 - 1000 에 해당하는 원핫인코딩 )

나는(x) =  ohe 

학교에(x + 1) =  ohe 

갑니다(x + 2) =  ohe 

### ppt 4

워드임베딩 4 

h => e 

e => l

l => l

l => o

출력값 hello = y 

hell = x 입력부

time-step = 4 



hihello 중 = > unique) h i e l o .. input_dim ( = input feature )

input_dim : 원핫 인코딩된 벡터의 크기 (길이)

hidden_size : 이 계층에서 출력하는 게 얼마냐 

### ppt 6

vocab 에 대한 ohe 하면 하나가 1인 값 [ 1, 0 , 0 , 0]  4차원으로 나온다 

input_dim : vocab 에 대한 크기 

(1,5,2) 

1: [hello] 전체 batch_size

5 : sequence_length = 5

2 : hidden_size = 2



(1,1,2) 에 대해서 히든 해버리면 16이 출력으로 나온다 

w1 =>

w2 ^

w3 ^

batch_size : 

input_dim = 4 

sequence_length = 5

hidden_size = 2



### ppt 8

journal of ---paper is trustable 

conference (x)

Continuous bow(bag of word) = CBOW

skip gram



### ppt 2

ouputs : important factor

states : 우측으로 진행 



BasicRNNCell : 허접해 issue

Vanishing Gradient  => sol) tanh ( -1 ~ 1 ) or (relu) => ( 0 ~ 1 )

ex) 나는 오늘 아침에 멀캠에 갑니다 => RNN

나는 토요일에 친구들과 종일 게임을 했어요 그래서 월요일인 오늘은 멀캠에 ___ 갑니다

___ 란?

= ' 나는 ' 이 채워져야하려면 rnn

반영률이 낮아진다

그래서 오래전에 나온것에 대해서 새로운 가중치를 올려 적용시켜 반영률을 새로 살려내는 기법 중 하난 LSTM 



 tensorflow : 연산 프로그램 , cpu 에서하는게 아니라 분산처리 구조형이므로 

분산되어진 pc 의 gpu 에서 처리한다는 가정후 설계 한 프로그램이므로, 

실제 연산 : 분산되어진 다른 pc에서 

그래프 실행 작업은 다른 컴퓨터의 gpu에서 처리하고 처리한결과를 받는 구조라고 생각되어지고 작동되는 설계이다 

=> 분산처리 환경은 아니지만 분산처리라는 가정하에 설계되어진 연산프로그램



선형구조 : 1대 1 매칭 

비선형구조 : 1대 다 

cf) 그래프 형 & 트리 형 

그래프 : node & node 연결

node( 연산, 상수, 변수 )

연결 ( tensor )



기본 그래프 생성 

그래프 자체 이름 부여 

