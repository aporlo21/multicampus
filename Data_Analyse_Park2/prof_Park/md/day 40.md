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

