#말뭉치 (Corpus) 텍스트 전처리
(수집) 전처리 분석 시각화&전처리 알고리즘 모델링 모델평가(피드백) 유지보수

mytext<-c("software environment",
  "software environment",
  "software\tenvironment")
mytext
library(stringr)
str_split(mytext,' ')

#sapply(입력:리스트, 출력:벡터)
#lapply(입력:리스트 출력 리스트 )

#각 요소별 단어의 개수
sapply(str_split(mytext, ' '),length)  # 1번째 함수에 대해 2번째인수 함수를 적용하겠다
#각 리스트 요소에 저장된 문자열의 길이
sapply(str_split(mytext, ' '),str_length)  # 1번째 함수에 대해 2번째인수 함수를 적용하겠다

#공백 처리 과정
mytext # \t : 공백 4개
mytext.nowhitespace<-str_replace_all(mytext,"[[:space:]]{1,}"," ") 
mytext
#"hi hello"=>"hi hello" #공백한칸으로 치환하자

#각 요소별 단어의 개수
sapply(str_split(mytext.nowhitespace, ' '),length)  # 1번째 함수에 대해 2번째인수 함수를 적용하겠다
#각 리스트 요소에 저장된 문자열의 길이
sapply(str_split(mytext.nowhitespace, ' '),str_length)  # 1번째 함수에 대해 2번째인수 함수를 적용하겠다
#software 문자열의 길이
#environment 문자열의 길이 







