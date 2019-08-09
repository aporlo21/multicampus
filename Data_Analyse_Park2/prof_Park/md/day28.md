# day28_CNN

### 필터로 특징을 뽑아주는 컨볼루션(Convolution) 레이어

케라스에서 제공되는 컨볼루션 레이어 종류에도 여러가지가 있으나 영상 처리에 주로 사용되는 Conv2D 레이어를 살펴보겠습니다. 레이어는 영상 인식에 주로 사용되며, 필터가 탑재되어 있습니다. 아래는 Conv2D 클래스 사용 예제입니다

```
Conv2D(32, (5, 5), padding='valid', input_shape=(28, 28, 1), activation='relu')
```

주요 인자는 다음과 같습니다.

- 첫번째 인자 : 컨볼루션 필터의 수 입니다.
- 두번째 인자 : 컨볼루션 커널의 (행, 열) 입니다.
- padding : 경계 처리 방법을 정의합니다.
  - ‘valid’ : 유효한 영역만 출력이 됩니다. 따라서 출력 이미지 사이즈는 입력 사이즈보다 작습니다.
  - ‘same’ : 출력 이미지 사이즈가 입력 이미지 사이즈와 동일합니다.
- input_shape : 샘플 수를 제외한 입력 형태를 정의 합니다. 모델에서 첫 레이어일 때만 정의하면 됩니다.
  - (행, 열, 채널 수)로 정의합니다. 흑백영상인 경우에는 채널이 1이고, 컬러(RGB)영상인 경우에는 채널을 3으로 설정합니다.



activation : 활성화 함수 설정합니다.

- ‘linear’ : 디폴트 값, 입력뉴런과 가중치로 계산된 결과값이 그대로 출력으로 나옵니다.
- ‘relu’ : rectifier 함수, 은익층에 주로 쓰입니다.
- ‘sigmoid’ : 시그모이드 함수, 이진 분류 문제에서 출력층에 주로 쓰입니다.
- ‘softmax’ : 소프트맥스 함수, 다중 클래스 분류 문제에서 출력층에 주로 쓰입니다.



입력 형태는 다음과 같습니다.

- image_data_format이 ‘channels_first’인 경우 (샘플 수, 채널 수, 행, 열)로 이루어진 4D 텐서입니다.

- image_data_format이 ‘channels_last’인 경우 (샘플 수, 행, 열, 채널 수)로 이루어진 4D 텐서입니다.

  image_data_format 옵션은 “keras.json” 파일 안에 있는 설정입니다. 콘솔에서 “vi ~/.keras/keras.json”으로 keras.json 파일 내용을 변경할 수 있습니다.



출력 형태는 다음과 같습니다.

- image_data_format이 ‘channels_first’인 경우 (샘플 수, 필터 수, 행, 열)로 이루어진 4D 텐서입니다.
- image_data_format이 ‘channels_last’인 경우 (샘플 수, 행, 열, 필터 수)로 이루어진 4D 텐서입니다.
- 행과 열의 크기는 padding가 ‘same’인 경우에는 입력 형태의 행과 열의 크기가 동일합니다.

간단한 예제로 컨볼루션 레이어와 필터에 대해서 알아보겠습니다. 입력 이미지는 채널 수가 1, 너비가 3 픽셀, 높이가 3 픽셀이고, 크기가 2 x 2인 필터가 하나인 경우를 레이어로 표시하면 다음과 같습니다. 단 image_data_format이 ‘channels_last’인 경우 입니다.



```
Conv2D(1, (2, 2), padding='valid', input_shape=(3, 3, 1))
```



필터는 가중치를 의미합니다. 하나의 필터가 입력 이미지를 순회하면서 적용된 결과값을 모으면 출력 이미지가 생성됩니다. 여기에는 두 가지 특성이 있습니다.

- 하나의 필터로 입력 이미지를 순회하기 때문에 순회할 때 적용되는 가중치는 모두 동일합니다. 이를 파라미터 공유라고 부릅니다. 이는 학습해야할 가중치 수를 현저하게 줄여줍니다.
- 출력에 영향을 미치는 영역이 지역적으로 제한되어 있습니다. 즉 그림에서 y~0~에 영향을 미치는 입력은 x~0~, x~1~, x~3~, x~4~으로 한정되어 있습니다. 이는 지역적인 특징을 잘 뽑아내게 되어 영상 인식에 적합합니다. 예를 들어 코를 볼 때는 코 주변만 보고, 눈을 볼 때는 눈 주변만 보면서 학습 및 인식하는 것입니다.



#### 가중치의 수

이를 Dense 레이어와 컨볼루션 레이어와 비교를 해보면서 차이점을 알아보겠습니다. 영상도 결국에는 픽셀의 집합이므로 입력 뉴런이 9개 (3 x 3)이고, 출력 뉴런이 4개 (2 x 2)인 Dense 레이어로 표현할 수 있습니다.

```
Dense(4, input_dim=9))
```



필터가 지역적으로만 적용되어 출력 뉴런에 영향을 미치는 입력 뉴런이 제한적이므로 Dense 레이어와 비교했을 때, 가중치가 많이 줄어든 것을 보실 수 있습니다. 게다가 녹색 블럭 상단에 표시된 빨간색, 파란색, 분홍색, 노란색끼리는 모두 동일한 가중치(파라미터 공유)이므로 결국 사용되는 가중치는 4개입니다. 즉 Dense 레이어에서는 36개의 가중치가 사용되었지만, 컨볼루션 레이어에서는 필터의 크기인 4개의 가중치만을 사용합니다.





#### 경계 처리 방법

이번에는 경계 처리 방법에 대해서 알아봅니다. 컨볼루션 레이어 설정 옵션에는 `border_mode`가 있는데, ‘valid’와 ‘same’으로 설정할 수 있습니다. 이 둘의 차이는 아래 그림에서 확인할 수 있습니다.



valid’인 경우에는 입력 이미지 영역에 맞게 필터를 적용하기 때문에 출력 이미지 크기가 입력 이미지 크기보다 작아집니다. 반면에 ‘same’은 출력 이미지와 입력 이미지 사이즈가 동일하도록 입력 이미지 경계에 빈 영역을 추가하여 필터를 적용합니다. ‘same’으로 설정 시, 입력 이미지에 경계를 학습시키는 효과가 있습니다.





#### 필터 수

다음은 필터의 개수에 대해서 알아봅니다. 입력 이미지가 단채널의 3 x 3이고, 2 x 2인 필터가 하나 있다면 다음과 같이 컨볼루션 레이어를 정의할 수 있습니다.

```
Conv2D(1, (2, 2), padding='same', input_shape=(3, 3, 1))
```

만약 여기서 사이즈가 2 x 2 필터를 3개 사용한다면 다음과 같이 정의할 수 있습니다.

```
Conv2D(3, (2, 2), padding='same', input_shape=(3, 3, 1))
```



### 사소한 변화를 무시해주는 맥스풀링(Max Pooling) 레이어

컨볼루션 레이어의 출력 이미지에서 주요값만 뽑아 크기가 작은 출력 영상을 만듭니다. 이것은 지역적인 사소한 변화가 영향을 미치지 않도록 합니다.

```
MaxPooling2D(pool_size=(2, 2))
```

- pool_size : 수직, 수평 축소 비율을 지정합니다. (2, 2)이면 출력 영상 크기는 입력 영상 크기의 반으로 줄어듭니다.





### 영상을 일차원으로 바꿔주는 플래튼(Flatten) 레이어

CNN에서 컨볼루션 레이어나 맥스풀링 레이어를 반복적으로 거치면 주요 특징만 추출되고, 추출된 주요 특징은 전결합층에 전달되어 학습됩니다. 컨볼루션 레이어나 맥스풀링 레이어는 주로 2차원 자료를 다루지만 전결합층에 전달하기 위해선 1차원 자료로 바꿔줘야 합니다. 이 때 사용되는 것이 플래튼 레이어입니다. 사용 예시는 다음과 같습니다.

```
Flatten()
```



- 컨볼루션 레이어 : 입력 이미지 크기 8 x 8, 입력 이미지 채널 1개, 필터 크기 3 x 3, 필터 수 2개, 경계 타입 ‘same’, 활성화 함수 ‘relu’

- 맥스풀링 레이어 : 풀 크기 2 x 2

- 컨볼루션 레이어 : 입력 이미지 크기 4 x 4, 입력 이미지 채널 2개, 필터 크기 2 x 2, 필터 수 3개, 경계 타입 ‘same’, 활성화 함수 ‘relu’

- 맥스풀링 레이어 : 풀 크기 2 x 2

- 플래튼 레이어

- 댄스 레이어 : 입력 뉴런 수 12개, 출력 뉴런 수 8개, 활성화 함수 ‘relu’

- 댄스 레이어 : 입력 뉴런 수 8개, 출력 뉴런 수 3개, 활성화 함수 ‘softmax’



모든 레이어 블럭이 준비되었으니 이를 조합해 봅니다. 입출력 크기만 맞으면 레고 끼우듯이 합치면 됩니다. 참고로 케라스 코드에서는 가장 첫번째 레이어를 제외하고는 입력 형태를 자동으로 계산하므로 이 부분은 신경쓰지 않아도 됩니다. 레이어를 조립하니 간단한 컨볼루션 모델이 생성되었습니다. 이 모델에 이미지를 입력하면, 삼각형, 사각형, 원을 나타내는 벡터가 출력됩니다.