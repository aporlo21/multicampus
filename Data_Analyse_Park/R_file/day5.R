library(ggplot2)
ggplot(data=mpg, aes(x=drv, y=cty))+
  geom_boxplot()
#그림그리기/그래프 #x:범주형 y:연속형 #굵은선 - median(중간값)
#text_mining : 데이터산에서 데이터를 채굴하는과정 // 채굴당시 패턴,규칙이 발견된다 - 규칙을 토통해 데이터모형을 찾아낼수 있다.
#주어진 텍스트로부터 찾을수있는 패턴 : 어떤 문단이 입력되었을때, 이것이 의미하는 바가 무엇인지, 주제, 감성 등 다양한 분류작업을 수행가능함.
#해당작업 당시 - 베이즈이론기반 베이지안 필터기를 통해 python내 구현, Recurrent Neural Network : 재귀적 용법. 텍스트의 등장순서에 따라 의미가 달라

#분석절차
#1)형태소 분석
#2) 품사 단어 추출
#3) 빈도표 작성
#4) 시각화
#머신러닝
#5)알고리즘 선택
#6) 모델
#7) 모델-> 분류 /예측/ 카테고리화
#음성생성, 텍스트생성, 챗봇
#햄/스팸 (영문버젼 -> 한글버젼 변환) *카카오, 메일분류

#말뭉치(CORPUS) :분석 대상 문서들의 집합
#chatbot 생성시, (은행 상담원 역할 대신)
#은행거래에서 오고가는 수많은 대화를 통해 훈련 받는다. 
#모든 챗봇은 해당분야 대화를 통해 학습되어진다. 
#챗봇 // 전체에 대해 잘아는 로봇을 만들기는 어렵다.ex)  소피아 로봇
#해당분야에 대한 학습이 위주. 자주 사용되어지는 분야에 대한 대화에 특화되어있다
#챗봇 : 욕설을 많이 들으면 욕설도 잘함
#해당도메인에서 사용되어지는 데이터기반으로 활용
#해당도메인 문서 수집이 관건 -> 말뭉치(CORPUS) [챗봇의 어휘력을 결정함]
#> 문서 > 단락 > 문장 > 단어 > 형태소 

#*text mining package는 java로 설치되어져있다

#install.packages("rJava")
#install.packages("KoNLP")
library(KoNLP)
library(dplyr)
library(rJava)

useNIADic() #해당 dictionary 통한 다양한 분석작업 가능

txt<-readLines("Data/hiphop.txt")
txt

#불필요한 특수문자 제거, punctuation 제거, 
letters #알파벳 소문자 나열
LETTERS #알페벳 대문자 나열

letters[5]

#install.packages("stringr")
library(stringr)

tolower("Eye for eye") #소문자로 변환
toupper("Eye for eye") #대문자로 변환
#영문자는 대, 소문자 한가지로 변환 필수
nchar('korea') #단어를 구성하는 문자의 수를 셀때 필요
nchar('대한민국')
nchar('대한 미국국') #공백도 문자로 취급

mysentence<-"Learning R is so interesting"
strsplit(mysentence, split=" ")#1인수 분리하고자하는 인수열 , #2인자 - 구분자 # 
mystr<-strsplit(mysentence, split=" ") 
mystr[[1]]
mystr[[1]][1]
mystr[[1]][5]

#단어를 문자로 분리하고 싶을시,
strsplit(mystr[[1]][5],split="")#문자단위는 공백없이 

for (i in 1:5){
  print(strsplit(mystr[[1]][i],split=""))
}

#list 함수 호출
list()
for (i in 1:5){
  print(strsplit(mystr[[1]][i],split=""))
}

myletters<-list()
myletters

#myletters 를 NA로 채운다 
rep(1,5)#반복
rep(NA,5)
myletters<-list(rep(NA,5))
myletters

for (i in 1:5){
  myletters[i]<-strsplit(mystr[[1]][i],split="")
}
myletters

myletters[5]

paste(myletters[[1]],collapse = "")

mywords<-list()
for(i in 1:5){
  mywords[i]<-paste(myletters[[i]],collapse = "")
}
mywords

paste(mywords, collapse = " ")

rwiki<-"R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing.[6] The R language is widely used among statisticians and data miners for developing statistical software[7] and data analysis.[8] Polls, data mining surveys, and studies of scholarly literature databases show substantial increases in popularity in recent years.[9]. as of May 2019, R ranks 21st in the TIOBE index, a measure of popularity of programming languages.[10]

A GNU package,[11] source code for the R software environment is written primarily in C, Fortran and R itself,[12] and is freely available under the GNU General Public License. Pre-compiled binary versions are provided for various operating systems. Although R has a command line interface, there are several graphical user interfaces, such as RStudio, an integrated development environment"
rwiki
#rwiki 대상분리작업
rwiki_para<-strsplit(rwiki,split="\n")
rwiki_para
class(rwiki_para)
str(rwiki_para) #두개의 문단단위로 분리
#문단 -> 문장 단위 분리작업(. )
#strsplit(rwiki_para[[1]])#[[1]]<-원소

rwiki_para[[1]]
rwiki_sent<-strsplit(rwiki_para[[1]], split="\\. ") #결과 이상해 (.)예약어-> (\\.)필요
#*정규표현식을 통한 전처리 

#문장->단어 단위 분리작업
rwiki_sent
rwiki_sent[[1]][1]
strsplit(rwiki_sent[[1]][1], split=" ")

test="R is a programming language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing."
str_replace_all() #전체 문자열을 변환시 사용 함수
fruits <- c("one apple", "two pears", "three bananas")
str_replace(fruits, "[aeiou]", "-")
str_replace_all(fruits, "[aeiou]", toupper)
str_replace_all(fruits, "b", NA_character_)

regex() #reg : regular //ex: expression //stringi-search-regex {stringi}

test="R? is# a100 a programming한  language and free software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing."
str_replace_all(test,"\\W"," ")#\\W와 반대 개념
str_replace_all(test,"\\d"," ")
str_replace_all(test,"\\D"," ")
test
#정규표현식 ; 특정정보 추출

txt<-readLines("Data/hiphop.txt")
txt
txt<-str_replace_all(txt,"\\W"," ")
txt

# Don't => do not // 축약형 전처리 필요

extractNoun("멀티캠퍼스는 강남구 역삼동에 위치합니다")

nouns<-extractNoun(txt)
nouns

#list 1~6200번 .각 리스트에 저장된 단어들에 대한 벡터화 필요

wordcount<-table(unlist(nouns))
class(wordcount)

wordcount

letters

df<-as.data.frame(wordcount, stringsAsFactors = F)
str(df)

df<-rename(df, word=Var1, freq=Freq)
str(df)

nchar("hello")
df<-filter(df,nchar(word)>=2)#data frame //#
str(df)

# df %>% 
#   arrange(freq) %>% 
#   tail(10)
# ctrl shift c

df %>% 
  arrange(desc(freq)) %>% 
  head(20)

#install.packages("wordcloud")
library(wordcloud)
pal <- brewer.pal(8,"Dark2")
wordcloud(words=df$word,freq=df$freq, min.freq=3, max.word=100,colors=pal)
pal<-brewer.pal(8,"Dark2")

text<-read.csv("Data/twitter.csv",header = T,fileEncoding = "UTF-8")
text
str(text)
#wordcloud(words-=df$word, freq=3, max.words=10, maxword=100)

text<-rename(text, no=번호,id=계정이름, date=작성일, tw=내용)
str(text)
text$tw<-str_replace_all(text$tw,"\\W"," ")
head(text$tw)

nouns<-extractNoun(text$tw)
nouns
table(unlist(nouns))
wordcount<-table(unlist(nouns))
df<-as.data.frame(wordcount, stringsAsFactors = F)
df
str(df)

df<-rename(df, word=Var1, freq=Freq)
df
dfword<-filter(df,nchar(word)>=2)#df에서
str(dfword)

top20<-dfword %>% 
  arrange(desc(freq)) %>% 
  head(20)

top20
order<-arrange(top20, freq)$word
ggplot(data=top20, aes(x=word,y=freq))+
  ylim(0,2500)+
  geom_col()+
  scale_x_discrete(limit=order)+
  coord_flip()+
  geom_text(aes(label=freq), hjust=-0.3)
library(wordcloud)
pal<-brewer.pal(8,"Dark2")
wordcloud(words=df$word, 
          freq=df$freq, 
          colors=pal, 
          min.freq = 10, 
          max.words = 100,
          random.order=F)

#install.packages("foreign")
library(foreign)
library(readxl)
#spss
raw_welfare<-read.spss(file="Data/koweps.sav", to.data.frame = T)
welfare<-raw_welfare
str(welfare)
View(welfare)
summary(welfare)
#성별,출생년도,혼인여부,종교,급여,직종코드,지역코드

welfare<-rename(welfare,
  sex=h10_g3,
  birth=h10_g4,
  marriage=h10_g10,
  religion=h10_g11,
  income=p1002_8aq1,
  code_job=h10_eco9,
  code_region=h10_reg7)

str(welfare)

#성별에 따라 월급차이?
class(welfare$sex)
table(welfare$sex)

table(is.na(welfare$sex))
welfare$sex<-ifelse(welfare$sex==1,"male","female")  
table(welfare$sex)  
qplot(welfare$sex)  
class(welfare$income)
summary(welfare$income)
qplot(welfare$income)+
  xlim(0,1000)

#0,9999
welfare$income<-ifelse(welfare$income %in% c(0,9999), NA, welfare$income)
table(is.na(welfare$income))

#성별에 따른 월급 차이분석하기
sex_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(meanIncome=mean(income))
  
sex_income
ggplot(data=sex_income, aes(x=sex, y=meanIncome))  +geom_col()

#몇 살때 최고급여?
summary(welfare$birth)

table(is.na(welfare$birth))  

ifelse(welfare$birth==9999, NA, welfare$birth)  
table(is.na(welfare$birth))  
welfare$age<-2019-welfare$birth+1  
summary(welfare$age)  
qplot(welfare$age)  
  
#나이에 따른 평균급여
age_income<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(age) %>% 
  summarise(meanIncome=mean(income))
head(age_income)
ggplot(data=age_income,aes(x=age,y=meanIncome)) +
  geom_line()

#연령대별 평균급여 비교 (시각화)
AgeIncome<-welfare %>% 
  filter(!is.na(income)) %>% 
  group_by(Age) %>% 
  summarise(meanIncome=mean(income)) %>% 
  ggplot(data=Age,aes(x=Age,y=meanIncome))+
  geom_col()

#직종코드 / 어떤직종이 급여많이 수령


welfare


