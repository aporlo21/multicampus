# Day3

표준화 : outliar ( 특이값, 이상치 )의 영향을 크게 받아, 표준화당시, 표준화되었을지라도 outliar의 영향을 여전히 많이 받는다. 특이값을제거하고 정상범위에 들어온값을 처리해야 온전한 답이나온다 =>  standard scaling 말고 robotics scaling이 필요함 

실무에서 이상치값 포함경우가 허다하므로 이에 대한 온전한 처리가 issue



정규화 : 최대값에서 최소값을 뺀것을 분모 ==> 출력값이 0~1 사이값으로 도출 / 해당 함수 ㅣ scikit-learn에 포함



범주화 : 변수에 연속형변수와 범주형변수(=>ex)학점)가 있음 ( 연속형 => 범주형) <변환 함수 scikit-learn에 포함>



이항분포 

- 이진화(binarize) => 데이터를 0,1로 구분표현한다 // 동전 앞 OR 뒷면 

				- cut 



원한 incording : 이숫자는 3으로보입니다(예측) => 컴퓨터는 0,1형태로 각 숫자들의 표현을 달리가져가야한다



fill_NA : 결측치에 대해서만 fill

reshape : 



## pandas & 통계

pandas 중심내용 // 파이썬 라이브러리 활용 - 주황색 책

==> ML & 통계 & 선형대수

==> DL & 통계 & 선형대수

**==> CNN (이미지)**

**==> RNN(자연어 (챗봇), 시계열분석)**

(DP) 수학적귀납법 **==> GAN / 강화학습(Q)**

(프로젝트 주제 3중 택1)



하둡(머신을 여러대로 분산해서 처리) => 

스파크(Framework)

**스칼라**, 파이썬 (내부적변환과정 존재 // framework ISSUE)

scaleup ( 장비 성능 (고사양 cpu) / 장비 대수 (저사양 cpu 다수) )

map reduce // 합치는 작업 처리 (memory 내 처리)

배치환경에서 분산처리(모듈 == 자바)

spark (온라인환경에서 실시간 처리 => 주식예측)

* 과제) pandas | 캐글 -> 타이타닉 / 데이터전처리 (결측치 처리...NA) / 분석 / 시각화 



- 표준 정규 분포도

![](C:\Users\user\Desktop\캡처\ctsdis8.jpg)



Out[7]: df1

|      |    A |    B |    C |    D |
| :--- | ---: | ---: | ---: | ---: |
| 0    |   A0 |   B0 |   C0 |   D0 |
| 1    |   A1 |   B1 |   C1 |   D1 |
| 2    |   A2 |   B2 |   C2 |   D2 |



Out[18]: df2

|      |    A |    B |    C |    D |
| :--- | ---: | ---: | ---: | ---: |
| 3    |   A3 |   B3 |   C3 |   D3 |
| 4    |   A4 |   B4 |   C4 |   D4 |
| 5    |   A5 |   B5 |   C5 |   D5 |

Out[8]: df3

|      |    E |    F |    G |    H |
| :--- | ---: | ---: | ---: | ---: |
| 0    |   A6 |   B6 |   C6 |   D6 |
| 1    |   A7 |   B7 |   C7 |   D7 |
| 2    |   A8 |   B8 |   C8 |   D8 |

Out[21]: df4

|      |    A |    B |    C |    E |
| :--- | ---: | ---: | ---: | ---: |
| 0    |   A0 |   B0 |   C0 |   E0 |
| 1    |   A1 |   B1 |   C1 |   E1 |
| 3    |   A2 |   B2 |   C2 |   E2 |

Out[30]: df5

|      |    A |    B |    C |    D |
| :--- | ---: | ---: | ---: | ---: |
| r0   |   A0 |   B0 |   C0 |   D0 |
| r1   |   A1 |   B1 |   C1 |   D1 |
| r2   |   A2 |   B2 |   C2 |   D2 |

Out[31]: df6

|      |    A |    B |    C |    D |
| :--- | ---: | ---: | ---: | ---: |
| r3   |   A3 |   B3 |   C3 |   D3 |
| r4   |   A4 |   B4 |   C4 |   D4 |
| r5   |   A5 |   B5 |   C5 |   D5 |