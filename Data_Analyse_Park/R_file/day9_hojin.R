#말뭉치 (Corpus) 텍스트 전처리
#(수집) 전처리 분석 시각화&전처리 알고리즘 모델링 모델평가(피드백) 유지보수

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

#대소문자통일
mytext<-"The 45th President of the United States, Donald Trump, 
states that he knows how to play trump with the former persident"
mytext
str_split(mytext, '')
myword<-unlist(str_extract_all(mytext, boundary("word"))) #my text내에서 2번째인수 를 포함한 열 추출 # 리스트 -> 벡터
myword<-str_replace(myword, "Trump", "Trump_unique_")
myword<-str_replace(myword, "States", "States_unique_")
table(tolower(myword))
mytext<-c("He is one of statisticians agreeing that R is the No. 1 statistical software.",
          "He is one of statisticians agreeing that R is the No. one statistical software.")
str_split(mytext," ")
mytext2<-str_replace_all(mytext,"[[:digit:]]{1,}[[:space:]]{1,}","")
mytext2
mytext2<-str_split(mytext2, " ")
mytext2 #"one" 유무 차이


str_c(mytext2[[1]], collapse = " ") #1리스트의 요소 백터 출력
str_c(mytext2[[2]], collapse = " ")

#문제 mytext에서 숫자는 모두 _number_ 로 일괄 치환 

mytext3 
mytext3<-str_replace_all(mytext,"[[:digit:]]{1,}[[:space:]]{1,}","_number_ ") 
mytext3<-str_split(mytext3, " ")
mytext3
      
mytext<-"Baek et al. (2014) argued that the state of default-setting
is critical for people to protect their own personal privacy on the Internet."             
str_split(mytext, "\\.") # (.) 특수문자처리 되므로 역슬래시 \\ 와 함께 기입해야함

#"성씨 다음 et al. 이 오고, 이어서 (년도) 형식이 따라온다 <패턴>
# => "_reference_" 로 일괄 치환 하고자 함

mytext2<-str_replace_all(mytext, "-", " ") #모든 - 기호는 공백처리해라
mytext2
mytext2<-str_replace_all(mytext2, "[[:upper:]]{1}[[:alpha:]]{0,}[[:space:]](et al\\.)[[:space:]]\\([[:digit:]]{4}\\)","_reference_") #모든 - 기호는 공백처리해라 #항상 고정된것, 상수는 ()처리한다 
mytext2

str_replace_all(mytext2,"\\.[[:space:]]{0,}", "")
# . 을 제거, . 뒤에 공백이 0개 이상인 경우

#불용어 직접 등록=>불용어 제거
mystopwords<-"(\\ba )|(\\ban )|(\\bthe )"
mytext<-c("She is an actor", "She is the actor")
str_replace_all(mytext, mystopwords,"")
library("tm")
stopwords("en") # en으로 등록되어져있는 짧은 불용어에 해당하는 목록
stopwords("SMART") #긴 불용어에 해당하는 목록

#어근 동일화 처리..
#시제 고려 -> 동일화 
# ~s, ~es => 동일화
#가고, 가다, 간, 가니 .... => 동일화

mystemmer.func<-function(mytext){
  mytext<-str_replace_all(mytext,"(\\bwas )|(\\bwere)|(\\bbe )","be ")
  print(mytext)
}
test<-c("I am a boy. You are a boy. He might be a boy")
mytext.stem<-mystemmer.func(test)
table(str_split(test," "))
table(str_split(mytext.stem," "))
#map

#n-gram:2(bi)-gram, 3(tri)-gram
#n번 연이어 등장하는 단어들의 연결


#대소문자 통일
#n gram + bayes [조건부 확률) => 문맥 파악 ex) 검색어 추천
#( 어떤 조건이 주어진 상황에서 어떤 상황이 벌어질 확률 조사 ex 구름이 낀 상황에서 비가 올 확률 ) 
# 확률값이 높을 수록 상위 추천 검색어에 뜬다.
mytext<-"The United States comprises fifty states. In the United States, each state has its own laws. However, federal law overrides state law in the United States."

myword<-unlist(str_extract_all(mytext, boundary("word")))
sum(table("word"))
#-------------------------------------------------------
mytext.2gram<-(str_replace_all(mytext, "\\b"))
myword2-> unlist*str()

mytext

library("p,")
#! 2단어씩 연결하여 출력
# the United 44

library(tm)
my.text.location<-"papers/"
#말뭉치 구성
mypaper<-VCorpus(DirSource(my.text.location))
mypaper
summary(mypaper)

class(mypaper)
mypaper[[3]]$content
mypaper[[2]]
mypaper[[3]]

mypaper[[2]]$meta
meta(mypaper[[2]], tag='author')<-"G. D"
mypaper[[2]]$meta
#단어_특수문자(#@$%^...)_단어
myfunc<-function(x){str_extract_all(x,"[[:alnum:]]{1,}[[:punct:]]{1,}[[:alnum:]]{1,}")}
lapply(mypaper,myfunc)
mypuncts<-lapply(mypaper,myfunc)
table(unlist(mypuncts))

#수치로된 자료 추출
myfunc<-function(x){str_extract_all(x,"[[:d]]{1,}")}
mydigits<-lapply(mypaper,myfunc)
table(unlist(mydigits))
#대문자로 시작하는 단어 추출 (고유명사)
myfunc<-function(x){str_extract_all(x,"[[:uppers]]{1}")}
myuppers<-lapply(mypaper,myfunc)
table(unlist(myuppers))
#tm_map : 숫자 제거
mycorpus<-tm_map(mypaper, removeNumbers)
mycorpus[[1]]$content

removePunctuation("hello.....world")
install.packages("SnowballC")
library(SnowballC)
wordStem(c("learn", "learns", "learning", "learned"))
#cleaned<-tm_map(코퍼스 변수, stemDocument)
mypaper<-VCorpus(DirSource(my.text.location))
mypaper[[1]]$content
cleaned<-tm_map(mypaper,stemDocument)
cleaned[[1]]$content

mycorpuse<-tm_map(mypaper, removeNumbers)
mytempfunc<-function(myobject,oldexp,newexp){
  newobject<-tm_map(myobject,content_transformer)
         function(x,pattern) 
           gsub(pattern, newexp, x)
}


mycorpus <- mytempfunc(mycorpus,"-collar","collar")
mycorpus <- mytempfunc(mycorpus,"\\b((c|C)o-)","co") #co로 바꿔라
mycorpus <- mytempfunc(mycorpus,"\\b((c|C)ross-)","cross") 
mycorpus <- mytempfunc(mycorpus,"e\\.g\\.","for example")
mycorpus <- mytempfunc(mycorpus,"i\\.e\\.","that is")
mycorpus <- mytempfunc(mycorpus,"\\'s","")
mycorpus <- mytempfunc(mycorpus,"s’","s")
mycorpus <- mytempfunc(mycorpus,"ICD-","ICD")
mycorpus <- mytempfunc(mycorpus,"\\b((i|I)nter-)","inter")
mycorpus <- mytempfunc(mycorpus,"K-pop","Kpop")
mycorpus <- mytempfunc(mycorpus,"\\b((m|M)eta-)","meta")
mycorpus <- mytempfunc(mycorpus,"\\b((o|O)pt-)","opt")
mycorpus <- mytempfunc(mycorpus,"\\b((p|P)ost-)","post")
mycorpus <- mytempfunc(mycorpus,"-end","end")
mycorpus <- mytempfunc(mycorpus,"\\b((w|W)ithin-)","within")
mycorpus <- mytempfunc(mycorpus,"=","is equal to")
mycorpus <- mytempfunc(mycorpus,"and/or","and or")
mycorpus <- mytempfunc(mycorpus,"his/her","his her")
mycorpus <- mytempfunc(mycorpus,"-"," ")
#대소문자 -> 소문자 치환
mycorpus[[2]]$content
mycorpus<-tm_map(mycorpus, content_transformer(tolower), stripWhitespace) # transformer : corpuse->str변환작업수행함수#stripWhitespace : 양쪽끝의 공백을 제거함
#불용어 사전 적용 -> 삭제
mycorpus<-tm_map(mycorpus,removeWords,words=stopwords("SMART")) #stopwords : 
#어근 동일화

stopwords("SMART")


mycorpus<-tm_map(mycorpus, stemDocument, language="en")
# TF-IDF : corpus내에서 word가 문서
 ccscs
#d1 ~ d3 각 문서에서 가장s c중요한 단어? => 주제찾기

#TF/IDF

#문서*단어 행렬
#DTM
#가로:문서 세로:단어
DocumentTermMatrix(mycorpus)
#TermDocumnetMatrix
install.packages(dtm.e)
dtm
inspect(dtm.e[1:3, 50:60])
