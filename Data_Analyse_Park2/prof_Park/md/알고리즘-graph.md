# 알고리즘

## 그래프



그래프 | 점과 선으로 구성되어있는것

방향을 가질수도, 

그래프 선상에 수 데이터가 존재하면, 이는 가중치를 의미한다

## 매트리스

행 과 열로 존재 // 쓸 데 없는 공간이 불가피하게 생긴다 ( 공간 = 메모리 )

ex) 가중치 - 네비게이션 

## 리스트

2차원 매트리스이지만 비사용공간을 줄여준다 

가중치 주는 방법 // 리스트 내에 튜플 생성

## DFS

edge : 선

node : 점

Depth 

## BFS

시작점에서 가장가까운방식으로 탐색

pop : 꺼내면서 지운다

stack // Visited

stack의 가장 윗값을 쌓고 탐색하는 과정의 반복[pop 반복]

stack의 윗값이 없어질때까지 반복 후 없어지면 Visited를 반환

## 시간복잡도

n2(제곱)

인접 리스트 : 모든 노드들이 연결되잇는 것



# 그리디 알고리즘

목적은 전체연결 최소비용 // 방식

## 크루스칼 알고리즘

### 간선을 중심으로 고려

**전체를 보고 다가간다**

순간적 선택) 장애물의 유무와 가중치 슈치에 따라 최적의 선택을 한다

다이내믹 프로그램) 에이전트가 인바이런먼트내에서 최적으로 나아갈수있는 방법

거시적인 관점 내 목적지 경로 모든 경우의 수 탐색을 통해 진짜 최적의 선택을 도출해냄

동전 줍기 프로그램 ( 동전수를 최소화하라  오백원짜리부터= 우재남교수님 // 동전수 최대화한다면 십원짜리부터)

Minimum String Tree (MST)

간선들의 수를 최소화한다 => 일렬정리 (By sorted method)

Cycling Tree가 형성되는 것은 제외시켜야한다 (최적수 탐색이므로)

Minimum Spinning Tree ( 5/7/7/5/9/6) => 39 

## 프림알고리즘

### 노드를 중심으로 고려

**한 칸씩 움직인다** 

=> 사이클고려를 하지않는다

v1 : 1

v2 : 2,3,4,5,6,7 (나머지)

가장 짧은 곳을 가라

7이해당 pop시키면

v1 : 1,7(1)

v2 : 2,3,4,5,6



v1 : 1, 7, 6(1)

v2 : 2,3,4,5



v1 : 1, 7, 6, 3(2)

v2 : 2,4,5



v1 : 1, 7, 6, 3, 4(2)

v2 : 2,5



v1 : 1, 7, 6, 3, 4, 2(3)

v2 : 5

=> 전체를 연결하는데 최소치인 경로를 탐색함



Q - FIFO (선입선출)

우선순위 Q - 순서에는 상관없이 조건지정부에 따라 선출











