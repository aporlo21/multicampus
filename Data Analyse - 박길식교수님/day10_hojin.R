install.packages("RWeka")
library(RWeka) #package 함수 load
library(tm)
#Weka_control : min max 값 설정
mytext<-c("The United States comprises fifty states.", "In the United States, each state has its own laws.","However, federal law overrides state law in the United States.")
mytext #본래의 mytext
#말뭉치 생성
mytemp<-VCorpus(VectorSource(mytext)) #벡터로 부터 바로 corpus 생성 => vertor sauce  사용함
mytemp # 본래의 mytext -> corpus로 변환
#VCorpus(DirSource("경로"))
ngram.tdm<-TermDocumentMatrix(mytemp) #함수를 통해 출력하겠다 # 17*3 51
ngram.tdm #non-/sparse entries : 해당단어가 특정문장안에 포함 되지 않았다 절반은 0, 절반은 0이 아니다

inspect(ngram.tdm) #해당단어 빈도수 체크

bigramTokenizer<-function(x) 
  NGramTokenizer(x, Weka_control(min=2,max=3)) #ngramTokenizer min = 2 : bingram // max = 3 : tringram
#weka내에 포함된 함수
ngram.tdm<-TermDocumentMatrix(mytemp, control=list(tokenize=bigramTokenizer)) #control 을 통해 특정함수를 통해 특정 정렬화됨
#어떻게 토큰화할지 #bigramTokenizer => x를 전달받아서 ngram에 x값 전달해줌
#토큰화 = 단어를 나누는 방식
str(ngram.tdm) #18*3 = 54요소 존재
ngram.tdm$dimnames$Terms # 참조 #주어진문장들을 bigram으로 나눠보자 
#각 각의 요소간 거리를 통해 요소분석
ngram.tdm[,]

#전체 문서에서 해당단어가 몇번 등장했는가에 대한 기능을 수행함
bigramlist<-apply(ngram.tdm[,], 1, sum) 
# matrix를 포함한 array # spply 입력 list 출력 vector
sort(bigramlist,decreasing=TRUE)

#오후숙제
#mycorpus에도 위 작업을 수행
#최상위 10개의 bigram & trigram 을 수행

#한국어 처리
install.packages("KoNLP")
library(KoNLP)
library(stringr)
library(rJava)
library(tm)
mytextlocation<-"논문/"
#파일들을 모두 가져와서 코퍼스 생성
mypaper<-VCorpus(DirSource(mytextlocation))
mykorean<-mypaper[[19]]$content #첫번째 mypaper 문서내용 확인
mykorean
#mykorean 문서 편집

#문서속에 영문자 제거하기
#소괄호 제거하기
#가운데 점 제거하기
#홑따옴표 제거하기
#한글위주 텍스트 남기기

library(stringr)
#영문자 제거
mytext<-str_replace_all(mykorean, "[[:lower:]]","") # mykorean : 문서, lower : 영문자 , "" : 제거
# "a-z" 정규표현식 #파이썬과 같은 정규표현식 적용가능
mykorean<-str_replace_all(mykorean, "\\(","") #여는 소괄호 단독 사용은 소괄호의미를 지니므로 역슬래시 필요
mykorean<-str_replace_all(mykorean, "\\)","") #닫는 소괄호

mykorean<-str_replace_all(mykorean, "[a-zA-Z]", "")
mykorean

#.제거, ''제거 
mykorean<-str_replace_all(mykorean, " . ", "") 
mykorean<-str_replace_all(mykorean, " ' ", "") 
mykorean<-str_replace_all(mykorean, " ' ", "") 

mykorean

#-------------------------------------------------------------------------

mydigits<-lapply(mypaper, function(x) 
  (str_extract_all(x, "[[:digit:]]{1,}")))
table(unlist(mydigits))

mycorpus<-tm_map(mypaper, removeNumbers)
str(mycorpus)

inspect(mycorpus[[3]])

mypuncts<-lapply(mypaper, function(x)
  (str_extract_all(x,"\\b[[:alpha:]]{1,}[[:punct:]]{1,}[[:alpha:]]{1,}\\b")))
table(unlist(mypuncts))


mytempfunct<-function(myobject, oldexp, newexp){
  tm_map(myobject,
         content_transformer(function(x,pattern) gsub(pattern,newexp,x)),
         oldexp)
}


# 전체적인 문맥을 파악한뒤 문맥을 기반으로 필요 + 성 붙어 나오거나 
# 필요 ,성 이 확률적, 빈도적으로 많았느냐 분석하고 앞단어의 출현 기반으로 분석 == baisian theory

#숫자표현에 대한 추출 ( 데이터 분석 )
#숫자 표현 추출

mydigits<-lapply(mypaper, function(x)
  (str_extract_all(x, "[[:digit:]]{1,}")))
table(unlist(mydigits)) # 전체 추출이 가능 with 정규표현식
mydigits
unlist(mydigits) #파일이름 과 파일 해당 텍스트 출력
table(unlist(mydigits)) #
#숫자들 제거
#일괄 적용
mycorpus<-tm_map(mypaper, removeNumbers)
mycorpus$content
str(mycorpus)

myNounFun<-function(mytext) {
  myNounList<-paste(extractNoun(mytext),collapse = " ")
  return(myNounList)
  #print(myNounList)
}

mycorpus[[2]]
inspect(mycorpus[[3]])

mypuncts<-lapply(mypaper, function(x)
  (str_extract_all(x,"\\b[[:alpha:]]{1,}[[:punct:]]{1,}[[:alpha:]]{1,}\\b")))
table(unlist(mypuncts))


table(unlist(mypuncts))

mytempfunct<-function(myobject, oldexp, newexp){
  tm_map(myobject,
         content_transformer(function(x,pattern) gsub(pattern,newexp,x)),
         oldexp)
}

mycorpus<-mytempfunct(mycorpus, "-","")
mycorpus<-mytempfunct(mycorpus, "_","")
mycorpus<-mytempfunct(mycorpus, "\\?","")
mycorpus<-mytempfunct(mycorpus, "/","")
mycorpus<-mytempfunct(mycorpus, "\\.","")
mycorpus<-mytempfunct(mycorpus, " . ","")
mycorpus<-mytempfunct(mycorpus, "‘","")
mycorpus<-mytempfunct(mycorpus, "’","")
mycorpus<-tm_map(mycorpus, stripWhitespace)

myNounCorpus<-mycorpus
library(KoNLP)
myNounFun<-function(mytext) {
  myNounList<-paste(extractNoun(mytext),collapse = " ")
  return(myNounList)
  #print(myNounList)
}

myNounListRes<-myNounFun(mycorpus[[3]]$content)
myNounListRes

myNounCorpus<-mycorpus
length(mycorpus)
for(i in 1:length(mycorpus)){
  myNounCorpus[[i]]$content<-
    myNounFun(mycorpus[[i]]$content)
}
myNounCorpus[[19]]$content
myNounCorpus[[19]]$meta
library(stringr)
table(unlist(lapply(myNounCorpus,function(x) 
  str_extract_all(x,boundary("word")))))
# "커뮤니[[:alpha:]]{1,}","커뮤니케이션"
imsi<-myNounCorpus
#length(imsi)
for(i in 1:length(myNounCorpus)){
  myNounCorpus[[i]]$content<-
    str_replace_all(imsi[[i]]$content,
                    "커뮤니[[:alpha:]]{1,}",
                    "커뮤니케이션")
  myNounCorpus[[i]]$content<-
    str_replace_all(imsi[[i]]$content,
                    "위키리크스[[:alpha:]]{1,}",
                    "위키리크스")
}
library(tm)
dtm.k<-DocumentTermMatrix(myNounCorpus)
dtm.k
colnames(dtm.k)


#기술통계 
#숫자 표현 추출
word.freq<-apply(dtm.k[,],2,sum)
head(word.freq)
length(word.freq)

#빈도를 기준으로 한 정렬
sort.word.freq<-sort(word.freq, decreasing = TRUE)
sort.word.freq[1:20]
cumsum.word.freq<-cumsum(sort.word.freq) #누적합
cumsum.word.freq[1:20] 

prop.word.freq<-cumsum.word.freq/cumsum.word.freq[length(cumsum.word.freq)]

prop.word.freq[1:20]

plot(1:length(word.freq))
plot(1:length(word.freq),prop.word.freq, type='l')

library("wordcloud")
#names(word.freq)
library(RColorBrewer)
mypal=brewer.pal(4,"Dark2")
wordcloud(names(word.freq), freq=word.freq, 
          min.freq = 5, 
          col=mypal, 
          random.order = FALSE, 
          scale=c(4,0.2))

teens<-read.csv("c:\\rwork/sns.csv")
str(teens)
table(teens$gender) #NA 값들을 빼고난 빈도수 조사 함수 table
table(teens$gender,useNA= "ifany") #NA값 포함 도출
summary(teens$age)
teens$age<-ifelse(teens$age>=13 & teens$age<20, teens$age, NA)
summary(teens$age)

teens$female<-ifelse(teens$gender=="F"& !is.na(teens$gender), 1, 0) #female 이면 false, 아니면 na or male
teens$nogender<-ifelse(is.na(teens$gender), 1, 0)

table(teens$gender,useNA="ifany")
table(teens$female)
table(teens$nogender)

mean(teens$age)
mean(teens$age,na.rm=TRUE)
table(teens$gradyear)
aggregate(data=teens,age~gradyear,mean,na.rm=TRUE)

table(teens$gradyear)
class(aggregate(data=teens,age~gradyear,mean, na.rm=T))
# "data.frame"으로출력
ave_age<-ave(teens$age, teens$gradyear,
             FUN=function(x) mean(x,na.rm=TRUE))
#벡터로출력

class(ave_age) #vector성분
teens$age<-ifelse(is.na(teens$age), ave_age, teens$age)
summary(teens$age)

str(teens)
interests<-teens[5:40]
interests #해당축의 단어의 빈도수 

#특정축에 의한 값때문에 전체값이 왜곡될수 있다. => 표준화 필요

lapply(interests, scale) #표준화
interests_z<-as.data.frame(lapply(interests, scale))
interests_z
#-------------거리계산 끝-------------------------
#random point (with Kmeans function - updating role)

# 정규화 | 0 ~ 1로 설정
# 표준화 | 토익 / 토플점수
# 클러스터링
set.seed(2345)
teen_clusters<-kmeans(interests_z, 5)
str(teen_clusters)

teen_clusters$size
teen_clusters$centers

teen_clusters$clustercen<-teen_clusters$centers
teen_clusters$clustercen
#teen_clusters[1:5, c("clustercen","gender","age","friends")]
str(teen_clusters)
table(teen_clusters$cluster)

#각 클러스터에 대한 나이의 평균을 출력

teens$cluster<-teen_clusters$cluster
str(teens)

aggregate(data=teens, age~cluster, mean)
aggregate(data=teens, female~cluster, mean)
aggregate(data=teens, friends~cluster, mean)

