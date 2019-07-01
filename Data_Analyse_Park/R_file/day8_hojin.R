## text analyising 
r_wiki<-"R is a programming language and software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing. The R language is widely used among statisticians and data miners for developing statistical software and data analysis. Polls, surveys of data miners, and studies of scholarly literature databases show that R's popularity has increased substantially in recent years.
R is a GNU package. The source code for the R software environment is written primarily in C, Fortran, and R. R is freely available under the GNU General Public License, and pre-compiled binary versions are provided for various operating systems. While R has a command line interface, there are several graphical front-ends available."

library(stringr)

str_extract(r_wiki, "software environment") #extract 하나면 한번만 출력
str_extract_all(r_wiki, "software environment") #해당 문자 포함 문자열 추출함수
class(str_extract_all(r_wiki, "software environment", simplify = TRUE))
#unlish 함수 적용효과 와 같이 나옴 => simplify = TRUE
str_extract_all(r_wiki, "software environment", simplify = TRUE) #해당 문자 포함 문자열 추출함수

#첫글자가 대문자로 시작되는 단어들을 추출
myextract<-str_extract_all(r_wiki, "[[:upper:]]{1}")#[[:upper:]]" : 대문자 표현 {1}:대문자가 한개인거 

str_extract_all(r_wiki, "[[:upper:]]{1}[[:alpha:]]{0,}")#반드시 두번째글자 가 1개 이상 {1,}
#{1,3} 최소글자수는 2글자 4글자까지 okay #최소길이 알파벳 대문자 하나 이상이면 두글자 이상인 모든 데이터 추출됨
table(myextract)

#등장 위치
str_locate(r_wiki, "software environment") #해당문자열이 어디에서 시작/어디에서끝났냐
str_locate_all(r_wiki, "software environment") #해당문자열이 어디에서 시작/어디에서끝났냐

#첫글자가 대문자로 시작 ... 단어 위치?
mylocate<-str_locate_all(r_wiki, "[[:upper:]]{1}[[:alpha:]]{0,}")
head(mylocate)
dim(mylocate[[1]])

class(mylocate[[1]])
mydata<-data.frame(mylocate[[1]])
mydata

myextract<-str_extract_all(r_wiki, "[[:upper:]]{1}[[:alpha:]]{0,}") #첫글자가 대문자인 문자 추출
myextract[[1]]

mydata$myword<-myextract[[1]]
mydata
myextract[[1]]

mydata$myword.length<-mydata$end - mydata$start +1 #끝위치 벡터 도출
mydata
#워드임베딩 -수치화 // 파생변수생성
r_wiki
#문자열데이터를 처리하기전에 전처리 (고유명사)=(_)가 필요함
#software environment
str_replace(r_wiki, "software environment", "software_environment")
temp<-str_replace_all(r_wiki,"software environment", "software_environment")
temp

str_extract_all(r_wiki,"software_environment|software|")
table(str_extract_all(r_wiki,"software_environment|software|environment"))
table(str_extract_all(temp,"software_environment|software|environment"))

r_wiki
str_replace_all(r_wiki,"g","&")
str_replace_all(r_wiki,"\\bg","&") #g로시작하는 문자열은 &로 변환
str_replace_all(r_wiki,"g\\b","&") #g로끝나는 문자열은 &로 변환



temp<-str_replace_all(r_wiki,"R\\b","R_computer.language_") 
temp
#\\b: ~시작 또는 ~끝
#R로 끝나는....

temp1<-str_replace_all(r_wiki,"\\bc","C_computer.language_") 
temp1

r_wiki_para<-str_split(r_wiki, "\n") #strsplit{base} 와 거의 유사 #줄바꿈
class(r_wiki_para) # 자료구조 확인

#문단을 문장으로 분류
r_wiki_sent<-str_split(r_wiki_para, "\\. ") #list이므로 인자가 벡터가 아니라는 waring 존재
r_wiki_sent<-str_split(r_wiki_para[[1]], "\\. ") #첫번째 요소 지정 # 1번 index : 3개문장 #2번 index : 4개문장으로 분류

#가장 근간이 되는 것이 자연어처리
r_wiki_sent[[2]] #2번 index 해당 문장 추출
my2sentences<-unlist(r_wiki_sent)[c(4, 7)]
my2sentences[1]
my2sentences[2]
#각 문장의 단어수 출력

#sum(table(my2sentences[1]))
#sum(table(my2sentences[2]))

mylength1<-length(unlist(str_split(my2sentences[1], " "))) # length 함수 : object(=vector)길이 구하는 함수//list 요소개수
mylength2<-length(unlist(str_split(my2sentences[2], " "))) # length 함수 : object(=vector)길이 구하는 함수//list 요소개수
mylength1; mylength2 #두 변수 동시 출력 (;)

my2sentences
myfixed.short<-str_split_fixed(my2sentences, "", 5) #string 약어 #fixed함수 - 마지막남은것들은 하나로 fix된다
myfixed.long<-str_split_fixed(my2sentences, "", 13) #string 약어 #fixed함수 - 마지막남은것들은 하나로 fix된다
myfixed.long

length.sentences<-rep(NA, length(unlist(r_wiki_sent)))

length.sentences

for(i in 1:length(length.sentences)){
  length.sentences[i]<-length(unlist(str_split(unlist(r_wiki_sent)[i]," ")))
  
}
length.sentences

#최대 단어수 기준으로 하여 문장과 단어로 구성된 행렬 (vector) 구하기
max.length.sentences<-max(length.sentences) 
#7*21 행렬 ( by 곱 )
#       1   2   3   4   ..... 11 
#sent1
#sent2
#..
#..
#..
#sent 7
#length(unlist(str_split(unlist(r_wiki_sent)[i]," ")))

sent.word.matrix<-str_split_fixed(unlist(r_wiki_sent)," ", max.length.sentences)
class(sent.word.matrix)
mydata<-data.frame(sent.word.matrix)
head(mydata)

# 열 이름을 word1~word21 로 변경
# 행 이름을 sent.1~sent.7 로 변경
# paste함수
rownames(mydata)<-paste('sent', 1:length(unlist(r_wiki_sent)), sep=".")
mydata
colnames(mydata)<-paste('word', 1:length(length.sentences),sep=".")
mydata
mydata[,1]
mydata[3,1:10]


str_count(r_wiki, "R") #총 9번 등장했다
str_count(r_wiki_para[[1]],"R")
str_count(unlist(r_wiki_sent), "R")
str_count(unlist(r_wiki_sent), "R{1,}") # R문자뒤로 
str_count(unlist(r_wiki_sent), "stat") # R문자뒤로 
str_count(unlist(r_wiki_sent), "(s|S)tat[[:lower:]]{1,}")

r_wiki_sent

name<-c("Joe", "Jack", "Jackie", "jefferson")
donation<-c("$1", "$111", "$11111", "$111111")
mydata<-data.frame(name,donation)
mydata

name2<-str_pad(mydata$name, width = 15, side = "right", pad = " ")
donation2<-str_pad(mydata$donation, width=10, side = "both", pad = "~")
mydata<-data.frame(name2,donation2)

rep("soft", 3)
str_dup("soft", "3")
r_wiki_sent[1]
nchar(unlist(r_wiki_sent))
str_sub(unlist(rwiki_sent))
nchar(unlist(r_wiki,sent,))
name3<-strg_trim(mydata2$name2,side='right')
mydata3                             

#-----------------------------------------------------------------------

#문자열 데이터 전처리
#품사 분석, 감성 분석
#웹사이트 텍스트 추출 -> 감성분석 (스크래핑 - 댓글 ㅜ) // 영문 댓글 추출 후 한글분석 
#A회사 -> 제품 댓글 추출->데이터 전처리->
# lg - 댓글분석 마케팅 팀 인력으로 자체적 긍/부정 하는중 => 이쪽 [회사 맞춤형 분석] 데이터도 해당회사 관련자료 

#Corpus(말뭉치:분석가가 관심갖는 영역(domain)의 텍스트 문장) 텍스트 데이터 사전처리 
install.packages("tm")
library(tm)
#공란처리
#1. 연습
#2. r_wiki

















