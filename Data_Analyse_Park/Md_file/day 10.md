## day 10



# Review

* 문서 분류 (Document Classification)

입력된 문서를 특성에 따라 분류하여 머신러닝 알고리즘에 기입하여 모델 산출

추출한 특성에 따라 긍정 부정을 판단하는 분류기를 생성하는게 현재수업목적

![](C:\Users\user\hojin\Data Analyse - 박길식교수님\pic file\document classification.png)

ex) 누구의 연설문인가

대상후보군의 빈도수를 조사하여 해당 스피치의 사용 단어를 단순계산하여 유추한다

* 자동분류 시스템 구성과정

데이터수집 데이터분류

* Corpus

corpus : 구축된 용어집합(문서집합)은 directory // 문서 집합을 표현하는 특수한 데이터 구조 

* 문서변환 

Vector Space Model

통일성 및 노이즈 제거를 위한 전처리 과정이 필요



- ERROR 잡기

1. KoNLP를 가장 먼저 로드한다음, 나머지 패키지를 로드한다

2. java 설치 (내 pc //  속성버튼 // 고급설정 // 시스템변수 // 환경변수추가 // 변수이름 : JAVA_HOME 변수값 : JAVA설치 경로지정 (C:\Program Files\Java\jre1.8.0_211) 

3. 확인 -> 종료

4. rstudio 실행 

   install.packages("KoNLP") 

   library(KoNLP)

   library(rJava)

   library(stringr)

5. 그래도 실행 x 시, Sys.setenv(JAVA_HOME="C:\\Program FIles\\Java\\jre1.8.0_211") #rstudio 내부 command 기입 

stackoverfly : IT community 



* 한국어와 영어차이

1) 분석 단위 기준 차이

영어 : 띄어쓰기, 한국어 : 조사

영어 : i am a boy => 4개

한국어 : 나는 소년입니다 => 띄어쓰기 2개 // 품사 : 나 / 는 / 소년 / 입니다



2) 처리 단위

공란, 특수문자, 숫자, 불용어, 대소문자 통일(한국어는 생략), 어근 동일화(stemming porter algoritm 불필요<=> 어근대신 명사 추출(한국어)), 엔그램

#전체적인 문맥을 파악한뒤 문맥을 기반으로 필요 + 성 붙어 나오거나 필요 ,성 이 확률적, 빈도적으로 많았느냐 분석하고 앞단어의 출현 기반으로 분석 == baisin theory

#도전하는 인재 #협업하는 인재



* regression 회귀 분석

<https://archive.ics.uci.edu/ml/index.php> //  Dataset site

* 머신러닝

교사 // 

비교사 - 문제만 있고 답은 없는것 // kmeans

강화

* K-means clustering Example

한 점

중심점에 대한 업데이트가 이뤄진다,

* 비교수학습

신경망 두개 혼용 

=> 적대 신경망 GAAN (신뢰도 향상) = 모사 능력 탁월 

* 강화학습 

RNN => 

PCA - 차원축소 