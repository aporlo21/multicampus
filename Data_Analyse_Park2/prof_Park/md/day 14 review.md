# day 14 review

matplotlib 구성 (https://wikidocs.net/4763)

figure 객체 (캔버스) & subplot(axe 객체) [paper]

```python
import matplotlib.pyplot as plt
fig = plt.figure()
type(fig)

```

빈 figure 객체에 axes 객체 를 생성하려면 add_subplot 매서드를 사용

add_subplot(1,1,1) : figure객체에 하나의 axesSubplot 객체를 생성한다

```python
fig = plt.figure()
ax = fig.add_subplot(1,1,1)
type(ax)
plt.show()
```

plt.show 함수 호출시 figure 객체에 axessubplot 객체가 생성됨 확인 가능 

figure객체 생성 및 여러개의 axessubplot 객체 생성하는 작업을 한번에 하고자할시 plt.subplots 사용 

 ex) plt.subplots(2,2) 호출시 figure 객체와 2*2 그리드 형태의 axessubplot 객체 생성

```python
ax_list[0][0]
ax_list[0][1]
ax_list[1][0]
ax_list[1][1]
```

plt.plot(x,y) = line plot 지원 / list x를 x축 데이터로 y를 y축 데이터로 점들을 선으로 그은 그래프를 생성합니다. 

plt.clf() : 생성그래프를 clear 



분포확인 plt.scatter()





