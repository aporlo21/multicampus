# day 11 
# Review

# 리스트 관련 변수 다루기
a<-list(1,2,3)
length(a) #list 요소의 개수 출력 함수

class(seq(5,10)) # 5-10 6개 요소를 가진 수열이 들어감
b<-as.list(seq(5,10)) # as.list 함수를 통해 list 형식으로 변환가능
b

e<-as.list(seq(5,10))
length(e)
#데이터를 표현할시 e라는 변수 저장 데이터 중 9를 참고하고 싶다면? 
length(e)-1
e[5] 

e[[5]] # 이게 진짜 참조

#9를 99로 변경
e[[5]]
e[[length(e)-1]]<-99 
e

#list에서 자료삭제 요구시
c<-as.list(seq(10,14))
c
#첫번째 요소에 10 데이터 삭제를 원할시
c[[1]]<-NULL
c
#삭제완료
#리스트에서 특정 자료 삭제시 NULL을 기입해준다

#만약에 13이라는 값을 삭제하고 싶다 (3)번인덱스
c[[3]]<-NULL
c #인덱스 자리가 앞당겨짐

#subset을 이용해 특정범위의 자료를 가져올수 있음
d<-as.list(seq(20)) #1~20까지 수 
#indexing : 변수 뒤에 대괄호 
d[10:15]

#vector : 자료형이 동일한게 쭊 나열 되어있는것
#c함수를 통해 벡터 생성
a<-c(1,2,3)
a
#여러개의 벡터를 좌우로 합치면 (cbind) 행렬
cbind()
#여러개의 벡터를 위아래로 합치면 (rbind) 행렬
rbind()
matrix(1:6, ncol=3, byrow = TRUE) #6행 1열

#c(1,2),c(3,4) #벡터
b<-rbind(c(1,2),c(3,4))
cbind(c(1,2),c(3,4))

# length : 벡터 든 행렬 이든 상관없이 전체 원소 갯수가 구해진다
a<-c(1,2,3)
length(a) #3
length(b) #4

#dim : 벡터의 경우에는 null, 행렬의 경우에는 크기 벡터 출력

dim(a)
dim(b)

#벡터 인덱싱  : [[]] (범위를 잡아서 인덱스에 해당하는 자료출력) 서브셋팅 : []
#원소의 이름이 없다는 점빼고는 거의일치 
a[1:2]
a[1]
a[[1]] #다양한 방법으로 벡터에 대해서 인덱싱이 가능하다

a<-rbind(1:4, 6:9) #2행 4열 mat 생성
a
# 8을 참조하여 출력
a[] #전체가 출력됨
a[1,] #첫번째 행
a[,2] #두번째 열
a[2,2:4]
a[1:2,2:3]
a[2,3] #8
a[[2,3]] #8

a<-1:10
a
# 5라는 원소를 빼고싶다
a[5] #5번째 참조
b<-a[-5] #특정요소를 뺀 나머지 출력 subsetting
b

a[7:9]
c<-a[-7:-9]
c

bl<-c(T,F,T,T)
k<-1:4
k[bl] #조건문에 자주 쓰일수 있다
k[k%%2==0] #true에 해당하는 자료만 출력되어나옴

k<-k*10
k #벡터화 연산이 지원이 된다

#변수 초기화
rep(NA,10) #NA 를 열번 반복

seq(0,100,length=5) # 5 등분한다 

#임의의 난수 발생시 rnorm함수실행
set.seed(1) #seed값을 어떻게 주느냐에따라 난수가 결정, seed값이 동일하면 동일 난수출력
rnorm(10) #난수 10개 생성 #gausian 정규분표 를 따른 난수 발생
runif(10) #구간을 나누어서 균등하게 출력 범위가 (0~1)사이 #uniform distribution

matrix(rnorm(10),c(2,5)) #난수 10개발생, 2행 5열 matrix가 난수의 값 초기화된 상태로 출력됨

#R vector 화 연산
#시간측정
x<-1:10000
y<-10001:20000
proc.time() #시간과 관련하여 정보를 얻어내는 함수 // cpu타임이 어느정도 소요되는지 나타내는 도구
#성능 참조시 유용
startTime<-proc.time()
z<-rep(0,10000)
#z[i]<-x[1]+y[1]
#z[1]
for(i in 1:10000){
 z[i]<-x[i]+y[i] 
}
proc.time()-startTime

a<-c(0,1,2,3)
b<-c(4,2,1)
a==b #요소끼리 비교할때
all(a==b) #모두 같냐 // 배열전체를 비교할때

exp(a) #자연상수 함수
a<-c(0,1,2,3)
log(a) # -infinite : -무한대
log10(a)

x<-1:5
y<-rep(1,length(x))
y
x+y
x+2 #확장 - broadcasting : 연산이 요소들끼리 이루어지기위한 적당한 확장이 이루어진것

x<-50:59
x
max(x) #최대값
which.max(x) #최대값에 해당하는 index 값 출력됨 #10

x<-matrix(c(10,20,10,20),nrow=2)
sum(x[,1])
colSums(x)

#그룹단위로 무엇인가 연산할시 dplyr패키지 // 그룹화 => filter head select groupby
library(dplyr)
set.seed(123)
df<-data.frame(k1=c("x","x","y","y","x"),
               k2=c("f","s","f","s","f"),
               d1=rnorm(5),
               d2=rnorm(5))
#df
summarise(group_by(df, k1), myMean=mean(d1)) #1인수 - data, 2인자 - 그룹화 기준 변수 3인자 - data부분 

df

summarise(group_by(df, k1, k2), myMean=mean(d1)) #

#그룹화 pibot table 활용
library(tidyr) # 정리정돈을 잘한 tyde #데이터 정리/정돈 패키지
# 주어진 데이터를 분석방향에 따라 dataset을 변형 및 재조합 // 재구조화시 사용하는 함수 spread()

summarise(group_by(df, k1, k2), myMean=mean(d1))
spread(summarise(group_by(df, k1, k2), myMean=mean(d1)), k2, myMean)

summarise(group_by(df, k1, k2), myMean=mean(d1))
spread(summarise(group_by(df, k1, k2), myMean=mean(d1)), k1, myMean)

#data.frame 합성
#두 데이터프레임 합성 #join, merge
#data base 
#bind : 단순히 프레임을 양옆 or 위아래로 연결

#merge : 두 df의 공통 key를 사용하여 병합
df1<-data.frame(k=c('b','b','a','c','a','a','b'),
                d1=0:6)
df1
df2<-data.frame(k=c('a','b','d'),d2=0:2)
df2
merge(df1,df2)

#c라는 값은 df1에는 있지만 df2에는 없다
#d라는 값은 df2에는 있지만 df1에는 없다

merge(df1,df2, all = T)
merge(df1,df2, all.x = T)
merge(df1,df2, all.y = T)

#join 연습코드 
#creating dataframe1
pd=data.frame(Name=c("Senthil","Senthil","Sam","Sam"),
              Month=c("Jan","Feb","Jan","Feb"),
              BS = c(141.2,139.3,135.2,160.1),
              BP = c(90,78,80,81))
print(pd)
#creating dataframe2
pd_new=data.frame(Name=c("Senthil","Ramesh","Sam"),
                  Department=c("PSE","Data Analytics","PSE"))
print(pd_new) 

left_join(pd, pd_new, by="Name") # by 공통속성 #name 이 있는곳만 depart 생성
right_join(pd, pd_new, by="Name") # outer_join 과 비슷
#문자형에 해당하는 month -> <NA> 발생
inner_join(pd, pd_new, by="Name")
#같은 것끼리 조인 

#감성분석
#ai 인공지능 모델이 아니다 // 단순히 감성분석 사전을 참고하여 분석결과 참조하는 미션
#100% 정확하진 않지만 사회학 언어학 연구자들이 분류해둔 감정사전이므로 신뢰도가 ok
#감정에 대한 어휘를 + - 로 나누어둔 afinn

install.packages("tidytext")
library(tidytext)
get_sentiments("afinn") #사용할수 있도록 하는 패키지  
#긍정,부정 감정정수를 점수로 표현함 -5 ~ +5
get_sentiments("nrc") #한 단어의 다양한 의미 sentiment 상황에 따라 다르게 모델에 적용

summary(get_sentiments("afinn")) #0은 정의 x
AFINN<-data.frame(get_sentiments("afinn"))
hist(AFINN$score, xlim = c(-6,6), col='blue', breaks=20) #histogram 포토출력

oplex<-data.frame(get_sentiments("bing"))
table(oplex$sentiment)

emolex<-data.frame(get_sentiments("nrc"))
table(emolex$sentiment)

emolex$word[emolex$sentiment=="anger"]

#감성분석 => 긍정 / 부정

#연도별로 p / n 평가 분류 
library(tm)
library(stringr)
library(dplyr)

my.text.location<-"papers"

mypaper<-VCorpus(DirSource(my.text.location))
inspect(mypaper)

# mypaper[[1]]
# str(mypaper[[1]])
# mypaper[[1]]$content
# class(mypaper[[1]]$content) # list
# class(unlist(mypaper[[1]][1]))
# mypaper[[1]][1]

length(as.character(mypaper[[1]][1]))
length(unlist(mypaper[[1]][1])) #1

mytxt<-c(NA,24)
mytxt[2]

mytxt<-c(rep(NA,24))
mytxt


for(i in 1:24){
  mytxt[i]<-as.character(mypaper[[i]][1]) #각각의 문서를 벡터화시킴
  
}
mytxt
mytxt[24]

library(tidytext)
#data_frame:tidytext형태로 데이터를 구성
my.df.text<-data_frame(paper.id=1:24, doc=mytxt) #dplyr패키지내 내장함수
#data_frame == tibble <=> data.frame // text상태로 데이터를 저장
my.df.text

#deprecated - tidy 쓰지말고 tibble 써라 
my.df.text.word<-my.df.text %>% #doc에 포함된 문서를 읽어서 단어로 분리작업해야한다 
  unnest_tokens(word, doc) # word로 분리하세요 
#문서 단위의 텍스트를 단어로 구분함
my.df.text.word #doc에 있는 모든 내용이 3502*2 

get_sentiments("bing")

my.df.text.word %>% 
  inner_join(get_sentiments("bing"))

myresult.sa <- my.df.text.word %>%
  inner_join(get_sentiments("bing")) %>% 
  count(word,paper.id,sentiment)

myresult.sa
  
myresult.sa <- my.df.text.word %>%
  inner_join(get_sentiments("bing")) %>% 
  count(word,paper.id,sentiment) %>% 
  spread(sentiment,n,fill=0)

myresult.sa

myagg<-summarize(group_by(myresult.sa,paper.id),
                 pos.sum=sum(positive),
                 neg.sum=sum(negative),
                 pos.sent=pos.sum-neg.sum)

myagg

myfilenames<-list.files(path=my.text.location,
                        all.files = TRUE)
myfilenames

paper.name<-myfilenames[3:26]

pub.year<-as.numeric(unlist(str_extract_all(paper.name,"[[:digit:]]{4}")))
pub.year  

paper.id<-1:24
pub.year.df<-data.frame(paper.id, paper.name, pub.year)

pub.year.df

mydf<-inner_join(myagg,pub.year.df,by="paper.id")

mydf

library(ggplot2)

ggplot(data=mydf, aes(x=paper.id,y=pos.sent)) + geom_col()
