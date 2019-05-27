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

분석 단위 : 영어 : 띄어쓰기, 한국어 : 조사

영어 : i am a boy => 4개

한국어 : 나는 소년입니다 => 띄어쓰기 2개 // 품사 : 