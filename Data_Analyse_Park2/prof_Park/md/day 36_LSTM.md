# day 36 

- apriori Algorithm



- LSTM ( 기억관리가 가능한 구조를 지님 )

![img](file:///C:/Users/user/AppData/Roaming/PolarisOffice/ETemp/8088_2561192/poclip1/03/image0.png)

hidden_size = 5      *# outp**u**t from the LSTM*

input_dim = 5        *#* *o**n**e**-**h**o**t* *s**i**z**e*

batch_size = 1       *#* *o**n**e* *s**entence*

seuence_length =   



cell.zero.state ( 초기입력 0 세팅 속성 )



![img](file:///C:/Users/user/AppData/Roaming/PolarisOffice/ETemp/8088_2561192/poclip1/06/image1.png)

tf.constant ( 1,3,2 )

셀 3개이루어짐 2/3 acc (by max value)

sequence_loss=> cost 쉽게 구해짐 



- RNN 구조의 특성상 문제가 존재함

1. vanishing gradient
2. exploding problem



RNN 내 각각의 셀의 연결전달 과정내에 메모리를 넣어준다 



- 일반 RNN 구조

![img](http://colah.github.io/posts/2015-08-Understanding-LSTMs/img/LSTM3-SimpleRNN.png)



- LSTM 구조

1. 망각(삭제) 게이트
2. 입력 게이트

![A LSTM neural network.](http://colah.github.io/posts/2015-08-Understanding-LSTMs/img/LSTM3-chain.png)





##### 입력값  ---시그모이드 ----> 입력값  * (0 - 1 value) = >입력값에서 얼마만큼을 기억하겠느냐



셀 상태는 컨베이어 벨트와 같다

 lstm 셀상태에 정보를 전달시킬수도 제거시킬수도 있다 {gate} structure

이전에서 보낸것을 얼마 만큼 전달하겠냐 (by sigmoid)



![img](http://colah.github.io/posts/2015-08-Understanding-LSTMs/img/LSTM3-focus-i.png)



입력게이트 : 현재정보를 기억하기 위한 게이트 

현재시점 : t

h(t-1) : 이전상태 

x(t) : 현재상태 입력

it, Ct => 입력게이트

이전에서 보낸것을 얼마 만큼 기억 전달하겠냐 ( => f(t) )

c(t-1)

![img](http://colah.github.io/posts/2015-08-Understanding-LSTMs/img/LSTM3-focus-C.png)



**수식설명**

C t = 현재 셀의 상태 정보 

1항) 이전정보 편집정보(얼마만큼 기억시킬래)

2항) 현재입력정보 



f(t) : 망각게이트 

i(t) : 입력게이트



깊이가 깊어질수록 정보 가중치가 낮아진다 ( vanishing gradient )

중요한 값에대해서 가중치를 업뎃하여 중요치를 보존, 유지해준다 (길동이)

ex) 길동이는/어제/공부했다 

길순이는/그의/친구다

길순이의/친구인/그의/이름은/길동이다 



![img](http://colah.github.io/posts/2015-08-Understanding-LSTMs/img/LSTM3-focus-o.png)



ot : ht-1, xt => 은닉상태와 입력층 의 시그모이딩

ht 출력.. 다음셀로의 전달..

---

---

## apriori 연관성규칙

data mining > machine learning

- 연관성 규칙

거래 아이템의 매출 빈도 기반으로 패턴을 찾아내는 인사이트를 위한 작업



문장 = 트렌젝션 [ 텍스트 박스 ]

문장 내 단어 = 아이템 [ 박스내 각각의 단어 ]

=> 문서 요약에활용

==> 연관규칙 : 어떤 단어뒤엔 어떤 단어가 나 

{조건 : 멀캠. 1303 호, 딥러닝}

{결과 : 강좌가 있다 }





오토인코더 

++













