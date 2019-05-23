install.packages("devtools")
install.packages("ggplot2")
install_github("cardiomoon/kormaps2014",force=TRUE)
install.packages("ggiraphExtra")
install.packages("dplyr")
library(devtools) #development tools
library(kormaps2014) #dataset
library(ggiraphExtra)
library(ggplot2) #초기내용을 설정하다
library(dplyr) #data manipulation 문법
str(changeCode(korpop1)) 
korpop1

korpop1<-rename(korpop1, pop="총인구_명", name="행정구역별_읍면동") 

str(changeCode(kormap1))  #주어진 df의 열과 열이름의 한글코드를 바꾼다
ggChoropleth(data=korpop1, #지도에 표시할 데이터 #대화형 도시 지도 그리기
             aes(fill=pop, #색상별로 표현할변수 #Data Mapping Tool
                 map_id=code, #지역 기준 변수
                 tooltip=name), 
             map=kormap1, #지도
             interactive = T #r이 대화형으로 상호작용될때 true가 반환되고 그렇지 않으면 false반환
             )# 인터렉티브
str(changeCode(tbc)) #dataset

ggChoropleth(data=tbc, 
             aes(fill=NewPts,
                 map_id=code,
                 tooltip=name),
             map=kormap1,
             interactive = T)
install.packages("plotly") #
library(plotly)
p<-ggplot(data=mpg, aes(x=displ,
                     y=hwy,
                     col=drv))+
geom_point()
ggplotly(p) #ggplotly: ggplot
str(diamonds)
p<-ggplot(data=diamonds, aes(x=cut, fill=clarity))+
geom_bar(position = "dodge")
ggplotly(p)         #ggplot2::ggplot() object를 plotly object로 

#시계열그래프(dygraphs)
install.packages("dygraphs")
library(dygraphs) # 자바 라이브러리를 이용한 대화형 시계열도면에 대한 r인터페이스
str(economics)
tail(economics) #object의 첫째, 마지막 파트를 반환한다.


library(xts)
eco<-xts(economics$unemploy, 
         order.by = economics$date) # 데이터 정렬
head(eco)
dygraph(eco) %>% # 시계열 데이터에 대한 대화형 플롯
  dyRangeSelector() # 대화형 범위 선택 및 zooming
#저축률과 실업자수 간의 상관관계
#여러개의 값표시
eco_a<-xts(economics$psavert,
    order.by = economics$date)
eco_b<-xts(economics$unemploy/1000,
      order.by = economics$date)
eco_a #저축률
eco_b #실업자수
eco2<-cbind(eco_a, eco_b) #cbind : r object를 행이나 열에 의해 합한다. 
str(eco2)

colnames(eco2)<-c("psavert", "unemploy") #행렬 유사객체의 열이름설정 # c : value값을 vector or list에 합
head(eco2)

dygraph(eco2) %>% #시간의 흐름 데이터를 위한 대화형 상자 
  dyRangeSelector() #주식예측그래프 와 유사(변화추이)

#학습정리!
#변수 : 연속, 범주형 변수
# files - data - csv.exam.csv
exam<-read.csv("Data/csv_exam.csv")
exam
exam[] #일반적으로, 대괄호 - index
#exam 2번행만 출력
exam[2,]
#class가 1인 행 추출
exam$class==1
#참인값만 추출
exam[exam$class==1,]
#수학점수 80점 이상인 행 추출
exam[exam$math>=80,]
#2반이면서 영어점수가 70점이상인 행추출
exam[exam$class==2 & exam$english>=70,]
#영어 90점미만이거나 과학이 50점 미만인 행추출
exam[exam$english<90 | exam$science <50,]
exam
#id열 추출
exam$id
exam[,1]
exam[,"id"]
#class, math열 추출
exam[,c(2,3)] #2,3번 열추출
exam[,c("class","math")]
#1행 3열추출
exam[1,3]
#5행 math열
exam[5,3]
exam[5,"math"]
#math가 50점이상인 행에 대한 english열 추출
exam[exam$math>=50,"english"]
#math가 50점이상인 행에 대한 english,science열 추출
exam[exam$math>=50,c("english","science")]

#수학>=50, 영어>=80인 학생에 대해 각 반의 전과목 총 평균 출력
#dplyr를 사용 (패키지)
exam %>% 
  filter(math>=50 & english>=80) %>% #두조건을 만족하는 데이터 출력
  mutate(tot=(math+english+science)/3) %>% 
  group_by(class) %>% 
  summarise(myMean=mean(tot))
#내장함수 (기본설치)를 사용 #요약통계 = 함수(aggregate/subset_부분집합:조건을 만족하는)
exam$tot<-((exam$math+exam$english+exam$science)/3)
aggregate(data=exam[exam$math>=50 & exam$english>=80,],tot~class,mean)
#1인자-data(subset),2인자-fomular(~)적용-그룹화//tot~class,3인자-적용할함수(평균)

#mpg데이터
#dplyr패키지 사용
#class중 compact와 suv차종의 도시 및 고속도로 연비
#통합연비에 대한 평균을 출력
#출력 예시
#class    meanTot
#compact  xxx
#suv      yyy
#my trial
#mpg 
#library(dplyr)
#str(mpg)
#mpg[mpg$class==c("compact","suv"),]&
  
#sol)
 mpg %>% 
  mutate(tot=(cty+hwy)/2) %>% 
  filter(class=="compact"| class=="suv") %>% 
  group_by(class) %>% 
  summarise(meanTot=mean(tot))

#범주형변수(Factor) : 카테고리화가 가능한 변수(a,b,c)
var1<-c(1,2,3,1,2) #수치형
var2<-factor(c(1,2,3,1,2)) #범주형
var1
var2

var1+3 #var1 : 수치형, 범주형(factor)이아닌,
var2+3

levels(var2)
levels(var1)

var3<-c("a","b","b","c")
var4<-factor(c("a","b","b","c"))
class(var3)
class(var4)

mean(var1)
mean(var2) #함수마다 적용가능한 type이 다르다.

#수치형변환
var2<-as.numeric(var2)
class(var2)
mean(var2)
levels(var2) #type이 변환되어졌으므로 levels함수 실행불가 -> NULL

#해당 type으로의 변환
as.character() 
as.data.frame() 
as.factor() 
as.Date()
#벡터 : 1차원, 한가지 변수 타입으로 구성
#행렬 : 2차원, 한가지 변수 타입으로 구성
#Data Frame : 2차원, 다양한 변수 타입으로 구성
#array(배열,행렬도 포함) : 2차원이상(다차원)
#list : 2차원이상(다차원), 다양한 변수 타입

#1. 벡터(1개이상의 값, 한 가지 타입)
a<-1
a
b<-"hello"
b

#2. Data Frame(2차원, 다양한 타입)
x1<-data.frame(v1=c(1,2,3),
               v2=c('a','b','c'))
x1
class(x1)

#3. 행렬
x2<-matrix(c(1:10), ncol=2)
x2
class(x2)

#4. 배열(array,2차원이상, 한가지 타입)
x3<-array(1:20,
          dim=c(2,5,2)
          ) 

#2행 5열, 깊이(차원) : 2 #(c함수로 행,열,dex부여가능 ㅈㄴㄷㄴㄴ능)
ddqwdsedrsd
#5.list( 2차원이상, 다양한 타입, 자유로움)
x4<-list(f1=a,  #벡터
         f2=x1, #데이터프레임
         f3=x2, #매트릭스
         f4=x3 #배열
         )
x4
#함수의 리턴결과가 리스트 타입인 경우가 많다
x<-boxplot(mpg$cty) 
class(x) #class함수 : type 찍어보기
x #$stats- [,1][1,]=>matrix구조 
#1번 열만 출력
x$stats[,1] #극단치 // 범위 넘으면 이상치
x$stats[,1][2] #원하는 데이터 추출 

#text mining
myvector<-c(1:6,'a')
myvector #모두 문자 타입
mylist<-list(1:6,'a')
mylist
obj1<-1:4
obj2<-6:10
obj3<-list(obj1,obj2)
obj3

mylist<-list(obj1,obj2,obj3)
mylist

#벡터로 구성된 자료->[]사용
#리스트 형식->[[]]사용
mylist[[3]][1] #리스트 #리스트 내 첫번째 벡터요소 실행
#[[1]]
#[1] 1 2 3 4
class(mylist[[3]][1]) #"list"
class(mylist[[3]][[1]]) #"vector"

mylist[[3]][[1]][2]

#unlist:리스트->벡터
myvector<-c(1:6,'a')
mylist<-list(1:6,'a')
unlist(mylist)
myvector
unlist(mylist)==myvector #요소간 비교

mean(mylist[[1]][1:6])
unlist(mylist) #문자 벡터 도출
mean(unlist(mylist)[1:6])

name1<-"Donald"
myspace<-""
name2<-"Trump"
list(name1, myspace, name2)

unlist(list(name1,myspace,name2)) #unlist: list를 vector로 변환
name<-c("갑","을","병","정")
gender<-c(2,1,1,2)
mydata<-data.frame(name, gender) #gender 속성에 대한 부가설명 attr
mydata
#attr : 해당 속성 설정 

attr(mydata$name,"what the variable means")<"이름"
mydata$name #원래는 갑을병정이지만, attr시 두번째 변수"" 속성의 이름(별칭)으로 작용

mydata$gender.character<-attr(mydata$gender,"what the variable means")<"성별"
mydata$gender #meta data : 부가설명 data

mylist<-list(1:4, 6:10, list(1:4, 6:10))
mylist

mylist[[3]]
lapply(mylist[[3]],mean)

lapply(mylist, mean) #apply함수 #대상인 자료구조가 1,2 : vector / 3 : list이므로 
lapply(mylist[c(1,2)],mean)
lapply(mylist[c(1,2,c(1,2))],mean) #list 내 list 구조

#빈도표 생성하기
wordlist<-c("the", "is", "a", "the")
doc1freq<-c(3,4,2,4)
doc2freq<-rep(1,4)

tapply(doc1freq, wordlist, length)
tapply(doc2freq, wordlist, length)
tapply(doc1freq, wordlist, sum)
tapply(doc2freq, wordlist, sum)
tapply(1:10, rep(1,10), sum)
#       벡터  그룹색인  함수
tapply(1:10, 1:10 %% 2==1, sum)
#       벡터  그룹색인  함수
sent1<-c("earth", "to", "earth")
sent2<-c("ashes", "to", "ashes")
sent3<-c("dust", "to", "dust")
#한문장에서 to:1, to가 아닌 단어는 2번 등장
#3개 문장에서 등장한 단어빈도조사(tapply)
myfreq<-c(rep(1,length(sent1)),rep(1,length(sent2)),rep(1,length(sent3)))
#myfreq : 1 1 1 1 1 1 1 1 1 

tapply(myfreq, c(sent1,sent2,sent3), sum)
mysentence<-"Learning R is so interesting"
#단어 단위 문장 분해
strsplit(mysentence, split=" ")
#문자 단위로 단어를 분해
mywords<-strsplit(mysentence, split=" ")
mywords[[1]]
strsplit(mywords[[1]][5],split="")

#각 단어들이 어떤 문자로 구성됐는지 표현

myletters<-list()
for(i in 1:5){
  myletters[i]<-strsplit(mywords[[1]][i],split="")
}

paste(myletters[[1]], collapse = "")

mywords2<-list(rep(NA, 5))
for(i in 1:5){
  mywords2[i]<-paste(myletters[[i]],collapse = "")
}
mywords2

paste(mywords2, collapse = " ")
#문단 문장 단어 분리
R_wiki<-"R is a programming language and software environment for statistical computing and graphics supported by the R Foundation for Statistical Computing. The R language is widely used among statisticians and data miners for developing statistical software and data analysis. Polls, surveys of data miners, and studies of scholarly literature databases show that R's popularity has increased substantially in recent years.
R is a GNU package. The source code for the R software environment is written primarily in C, Fortran, and R. R is freely available under the GNU General Public License, and pre-compiled binary versions are provided for various operating systems. While R has a command line interface, there are several graphical front-ends available."
R_wiki
#1. 문단 단위로 분리
r_wiki_para<-strsplit(R_wiki, split="\n")
r_wiki_para #2개의 문단으로 분리
#2. 문단 -> 문장 단위로 분리
r_wiki_sent<-strsplit(r_wiki_para[[1]], split="\\. ")
r_wiki_sent
#3. 문장 -> 단어 단위로 분리
class(r_wiki_sent)
class(r_wiki_sent[[1]])
class(r_wiki_sent[[2]])

r_wiki_word<-list()
r_wiki_word[[1]]<-strsplit(r_wiki_sent[[1]], split=" ")
r_wiki_word

for(i in 1:2){
  r_wiki_word[[i]]<-strsplit(r_wiki_sent[[i]],
                             split=" ")
}
r_wiki_word
#r_wiki_word보면 language단어 추출
r_wiki_word[1]
r_wiki_word[[1]][[2]][3]

mysentence<-"Learning R is so interesting"
loc.begin<-as.vector(regexpr('ing', mysentence)) #시작 위치
#패턴길이
loc.length<-attr(regexpr('ing', mysentence),
     "match.length")
#종료 위치
loc.end<-loc.begin+loc.length-1
loc.end

gregexpr('ing', mysentence)
#매칭된 문자열의 개수수
#모든ing 패턴의 발견 위치저장
length(gregexpr('ing', mysentence))[[1]]
loc.begin<-as.vector(gregexpr('ing', mysentence)[[1]])
#매칭된 패턴길이
attr(gregexpr('ing', mysentence)[[1]],"match.length")

loc.length<-attr(gregexpr('ing', mysentence)[[1]],"match.length")
loc.end<-loc.begin+loc.length-1
#regexex 함수는 regexpr과 비슷
regexpr('interesting', mysentence)
regexec('so (intere(s)ting)', mysentence)
# 18 28 : 18번째 위치, 28번째 위치 매칭 
# "Learning R is so interesting"
# software 단어 검색

mysentences<-unlist(r_wiki_sent)
regexpr("software",mysentences) # -1 :검색 안됬다
# 2회 이상 등장 여부 확인
gregexpr("software",mysentences)
regexpr("software", mysentences)
mytemp<-regexpr("software", mysentences)
my.begin<-as.vector(mytemp)
my.begin[my.begin==-1]<-NA
my.begin + attr(mytemp,"match.length")-1 #종료위치
my.begin[my.begin==-1]
my.end<-my.begin+attr(mytemp, "match.length")
my.end
length(my.begin)
mylocs<-matrix(NA, length(my.begin), 2)
mylocs

#matrix(채울거, 행길이, 열길이)


#---------------------------------------------
colnames(mylocs)<-c('begin', 'end')
rownames(mylocs)<-paste ('sentence',1:length(my.begin), sep) # matrix col names 변경이 가능

paste ('sentence',1:length(my.begin), sep)

#paste('sentence',1, sep="")
#paste('sentence',2, sep="")
#paste('sentence',3, sep="")
#paste('hello', 'hojin', sep="^^")

mylocs
for(i in 1:length(my.begin)){
  mylocs[i,]<-cbind(my.begin[i], my.end[i])
}
cbind(my.begin[1], my.end[1])
#----------------------------------------------
grep('software',mysentences)
# 1 2 5 : 1,2,5 번 문장에서 발견됨
grepl('software',mysentences)
mysentence 
sub('ing','ING',mysentence) #소문자 ing를 대문자 ing로 치환
gsub('ing','ING', mysentence)
sent1<-r_wiki_sent[[1]][1]
new.sent1<-gsub("R Foundation for Statistical Computing","R_Foundation_for_Statistical_Computing",sent1)

sum(table(strsplit(sent1,split=" "))) #전체 단어 수 출력

new.sent1
sum(table(strsplit(new.sent1,split=" "))) #(_로 고유 명사화 하여 전체 단어 수 축소 출력
# new.sent1변수에 저장된 특정 단어 제거 <gsub ()>
gsub("and","",new.sent1)
gsub("and |by |for | the ","",new.sent1)
drop.sent1<-gsub("and |by |for | the ","",new.sent1)
sum(table(strsplit(drop.sent1, split=" ")))
#pattern 저장
mypattern<-regexpr('ing',mysentence)
#pattern과 매치되는 문자열 추출
regmatches(mysentence, mypattern)
mypattern<-gregexpr('ing',mysentence)
regmatches(mysentence, mypattern)

#invert option 해당 표현을 제외
mypattern<-regexpr('ing', mysentence)
regmatches(mysentence, mypattern,
           invert = TRUE)
mysentences
substr(mysentences, 1, 30)
#ing로 끝나는 모든 단어를 추출
my2sentence<-c("Learning R is so interesting","He is a fascinating singer")
# singer 는 포함되서는 안됌
mypattern0<-gregexpr("ing", my2sentence)
#regexpr("ing", my2sentence)
gregexpr("ing", my2sentence)
regmatches(my2sentence, mypattern0)

#ing 앞에 알파벳만 올수 있음 [[:alpha:]] 정규표현식-모든 알파벳문자-matching
mypattern1<-gregexpr("[[:alpha:]](ing)",
                     my2sentence) # 
regmatches(my2sentence, mypattern1)
#ing 앞에 최소 1회 이상 알파벳 올수 있음
mypattern2<-gregexpr("[[:alpha:]]{1,}(ing)", #한글자이상. 무한대 {1,}
                     my2sentence) # 
regmatches(my2sentence, mypattern2)
#interesting 앞에 공백 부분이 매칭이 되지 않으므로 출력값이 해당 단어 바로이전에서 막힘

#ing로 끝나야 함
mypattern3<-gregexpr("[[:alpha:]]+(ing)\\b", #한글자이상. 무한대 {1,} = + 과 같은 의미
                     my2sentence)# 
regmatches(my2sentence, mypattern3)




mypattern<-gregexpr("[[:alpha:]]+(ing)\\b", #한글자이상. 무한대 {1,} = + 과 같은 의미
                     mysentences)#
myings<-regmatches(mysentences, mypattern)
myings
table(unlist(myings))

#대소문자를 일괄 통일
mypattern<-gregexpr("[[:alpha:]]+(ing)\\b", #한글자이상. 무한대 {1,} = + 과 같은 의미
                     tolower(mysentences))# 
myings<-regmatches(tolower(mysentences), mypattern)
myings
table(unlist(myings))

#연습문제

#1.mysentences에서 stat~ 로 시작되는 표현 추출

mypattern<-gregexpr("(stat)[[:alpha:]]+",tolower(mysentences))
regmatches(tolower(mysentences),mypattern) #
#대소문자 구분
mypattern<-gregexpr("(stat)[[:upper:]]+",tolower(mysentences))
myuppers<-regmatches(tolower(mysentences),mypattern) #
myuppers

mypattern<-gregexpr("[[:lower:]]+",tolower(mysentences))
my.lowers<-regmatches(tolower(mysentences),mypattern) #
my.lowers
table(unlist(my.lowers))

#대소문자 구분 없이 가장 많이 등장한 문자
mypattern<-gregexpr("[[:lower:]]",tolower(mysentences))
my.alphas<-regmatches(tolower(mysentences),mypattern) #
my.lowers
mytable<-table(unlist(my.alphas))

max(mytable) #71
#a 출력
mytable[mytable==max(mytable)]
length(mytable) #22개 알파벳 문자 사용
sum(mytable)

ggplot(pressure, aes(x=temperature, y=pressure))+
  geom_point(size=2,color='red')+ # 포인트가 찍힘
  geom_line(size=2,color='deepskyblue') # 선으로 이어짐

ggplot(pressure, aes(x=temperature, y=pressure))+
  geom_line(size=2,color='deepskyblue')+ # 선으로 이어짐
  geom_point(size=2,color='red')+ # 포인트가 찍힘
  ggtitle('pressure data')+
  xlab('Temp')+
  ylab('Prs')+
  theme_bw()
  #theme_gray()
  #theme_classics()
  #theme_bw()


#ggplot의 bar그래프 출력 방식
#1. x축만 지정 => 빈도
#2. x,y축 모두 지정
ggplot(diamonds, aes(cut))+
  geom_bar() #종류별 빈도 출력
  
ggplot(diamonds, aes(cut))+
  geom_bar(stat='count') #종류별 빈도 출력 #() : default값은 count로 되어있음 (빈도)

#x,y축 모두 지정하는 방법
sleep
ggplot(sleep, aes(ID, extra, fill=group))+ #aes: 그래프의 틀을 정해주는 함수 #fill_group 색상추가 & 범례구분
  geom_bar(stat='identity', position='dodge') #그래프 표현방식 정해주는 함수 #position:색상에 따른 구분 명확
#stat 어떤통계치를 바탕으로 graph그릴래 함수 #'extra축 데이터 바탕으로 그래프 그리겠다.
# id 1에 해당하는 extra data - 0.7 + 0.9 => 출력
ggplot(diamonds, aes(color, fill=cut))+ #cut column에 대한 누적 막대그래프 출력표시
  geom_bar(position='fill')+ # 청록 녹색과 같은 색상구분 여렵 // 비율비교 어렵다. => position='fill' 상대적 비율 확인 가능케함
#=> 다이아몬드 컷팅에 따른 색상비교그래프 // 노란색 비율이 가장 높다.(결론)
  coord_flip()

class(mytable)
mydata<-data.frame(mytable)
mydata
ggplot(mydata, aes(x=Var1, y=Freq, fill=Var1))+ # fill : 범례자동생성부분이 좋지않다.
  geom_bar(stat='identity')+ # x축만 지정해주는 경우 geom_bar 를 사용
  guides(fill=FALSE) # 범례부분 삭제


#2.가장 많이 사용된 단어?

#3.총 몇개의 알파벳 문자가 쓰였을까?

#4.가장많이 사용된 알파벳 문자는?

#5. #4번 결과를 시각화
