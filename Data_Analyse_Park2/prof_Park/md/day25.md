텐서를 새로운 형태로 캐스팅하는데 사용한다.

부동소수점형에서 정수형으로 바꾼 경우 소수점 버린을 한다.

Boolean형태인 경우 True이면 1, False이면 0을 출력한다.

## 

`gcf()`로 현재 이미지 instance를 변수에 할당한 후, 이 instance로 `savefig()`를 불러야 합니다. draw_graph()만 다음같이 바꿔주세요



```python
def draw_graph(x, y):
    plt.plot(x, y, marker='o')
    plt.xlabel('Distance in meters')
    plt.ylabel('Gravitational force in newtons')
    plt.title('Gravitational force and distance')
    plt.show()
```

.................................... 변경 전 후 ...................................................

```python
def draw_graph(x, y):
    plt.plot(x, y, marker='o')
    plt.xlabel('Distance in meters')
    plt.ylabel('Gravitational force in newtons')
    plt.title('Gravitational force and distance')

    fig = plt.gcf() #변경한 곳
    plt.show()
    fig.savefig('GG.pdf') #변경한 곳
```