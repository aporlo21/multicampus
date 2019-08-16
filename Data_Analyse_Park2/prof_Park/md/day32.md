# day32

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



BasicRNNCell

