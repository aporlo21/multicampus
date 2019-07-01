* ERROR 잡기

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

