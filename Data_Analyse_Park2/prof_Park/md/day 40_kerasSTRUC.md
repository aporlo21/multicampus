# day 40

- 딥러닝 모델 설계 

: weight 조정 (update)

구성 / 가중치 저장 => 사용

모델 저장 = ( 모델 구조 + 가중치 ) 저장



- keras

cost 함수 ... 최적화, 노드

모델불러오기



```python
model.fit 모델 만들었었다
model.save('파일명.hf') 
load_model("모델명.hf")
```



Dense : 입력(4)과 출력(8)을 모두 연결... => 32개 layer

```python
Dense(8, input_dim=4, init=가중치초기화, activation='relu')
```

Dense(8)  = (출력관련 뉴런갯수, 입력관련뉴런객수, 가중치초기화방법)



```python
model=Sequential()
model.add(Dense(12,input_dim=8,activation=relu))
model.add(Dense(8, activation=sigmoid))
model.add(Dense(1, activation=sigmoid)) # 마지막한개로 출력

```

- CNN

```python
Conv2D(32, (5,5), padding='vaild' or 'same', input.shape=(28,28,1)) # # 32 : 필터 개수, (5,5) : 필터 사이즈, MNIST data

```

- RNN

```python
LSTM(4, input_dim=1, input_length=10)
# (셀의개수, 입력에대한 속성개수, sequence data length(x0~x9))
# (기억할때 얼마만큼을 기억하겠느냐, )
```



many to one : 맨아래층에서만 출력을 호출함[ 은닉층의 마지막노드 동작]

outputs[:[-1]] : 맨 오른쪽 애를 출력한다 [tensor-flow]

= [inKeras] return_sequences = True(many to many) OR False(many to one) 



- tagging // 자연어처리내에서 굉장히 중요한작업중하나

= 지도학습

xdata : tagging 해야할 단어들이 자리한다 

ex) ['G20','rejects','JAPAN','....'] # 기구

ydata : tagging 

ex) ['ORG'], [



: 단어의 유형을 찾는작업

품사태깅 : 단어의 품사



ex) 개체명 인식 : 철수는 오늘 지각했다

​							( 사람 )  ( 시간 )



- BIO(Begin Inside Outside) - 개체명인식의 방식 ( 시작, 내부, 끝 )

ex) 코퍼스  : 한국은 아시아에 있다 

​					( B I O O O O O O O O)

(나라이름의 시작, 내부,  끝, 끝, 끝, 끝, 끝, 끝, 끝)

ex) 코퍼스  : 눈물을 듣자 (BIOOO)

ex) 코퍼스  :  마징가 Z 보러갑시다 (B -movie I  -movie I  -movie I  -movie OOOOO) [개체명써준다 ]



- **품사태깅 참조문: REF)**

 https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html



- **개체명인식 태깅 참조문 : REF)**

https://raw.githubusercontent.com/Franck-Dernoncourt/NeuroNER/master/neuroner/data/conll2003/en/train.txt

sol) 상하 구독방식 취함 .... (단어, 품사, BIO, 개체명)

---

NP : 명사 

BIO : 시작 내부 바깥 

VBZ : 동사

---

개체가 아니면 0

EU : org 개체

MISC : 기타단어 개체

---



Xtrain : [' 홍','길동']

Ytrain : ['B-per', 'per'] // (B, I)

Xtrain & Ytrain 쌍을이룬다



- 양방향 RNN

```python
model.add(Bidirectional(LSTM(크기, return_req = True)))
```

X1 ('홍') => Y1('B-PER')

X2 ('길동') => Y2('PER') # 단방향...



X1 ('FIFA') => Y1('B-PER') /// 셀두개로 나누어져 신호를 전달하고... 뒤에서 부터 신호를 전달받고 ...

X2 ('REJECTS') => Y2('PER') 



- 개체명 인식모델

EX) 길동이는 8,28일에 멀캠에 지각했다 => 토큰화 + 품사태깅

전처리작업 (토큰화,, 단어단위 토큰화 + 품사태깅 ) =====> 입력) 모델링

길동 - 사람 / 8.28 - 시간 / 멀캠 - 조직

