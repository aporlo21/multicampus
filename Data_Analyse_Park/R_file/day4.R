#na.strings - read.csv // 해당문자열을 모두 NA처리함
#write.csv //
c(1,2,3)
c(4,5,6)
rbind(c(1,2,3), c(4,5,6)) #행합치기
x<-data.frame(id=c(1,2),name=c("a","b"),stringsAsFactors = F)
x
str(x)

y<-rbind(x,c(3,"c"))
y #행추가

cbind(c(1,2,3), c(4,5,6)) #열합치기

#apply 함수 : r - vector자료구조 에 대해 특정함수를 적용하고 싶을때 사사용
#lapply : List 형식으로 도출되는 apply함수 
#스칼라 : 0차원, 벡터:동일한형태의 data나열(연속) 행렬:2차원구조
#list : 자료구조, data type이 모두 달라도 상관무. list 내에 다양한 자료구조 (행렬,문자 등등 ) 저장이 가능함<->행렬,벡터 - 데이터 구조가 모두 같아야 함
#sapply : return값이 vector or matrix로 도출됨
#tapply : 자료처리를 위해 기준을 부과하여 이에 따라 그룹핑한다. 각각 그룹에 대해서 함수를 적용한다.
a<-matrix(1:9,ncol=3)#col의 갯수 3
a#각각의 행에 대한 합을 도출
apply(a,1,sum)#~한 자료에 ~함수를 적용해라, FUN=1or2로 표현됨
apply(a,2,sum)

head(iris)
str(iris)
#1~4열까지에 대한 각 열의 합계 
apply(iris[,1:4], 2, sum)
iris

rowSums(iris[,1:4])#colSums
rowMeans(iris[,1:4])#colMeans

res<-lapply(1:3, function(x) {x*2})#첫번째인수에 대해 2번째인수기능을 실행한다 // 각각의 자료에 대해 2배//vector or list 포함
res

res[[3]]
class(res)#lapply함수 적용
#list -> vector
res<-unlist(res)
res
class(res)

x<-list(a=1:3, b=4:6)
x

lapply(x,mean)#평균 구하는 함수수
lapply(iris[,1:4], mean)

class(iris[,1:4])
class(lapply(iris[,1:4],mean))
class(as.data.frame(lapply(iris[,1:4],mean)))

class(lapply(iris[,1:4],mean)) #리스트
class(sapply(iris[,1:4],mean)) #벡터 
sapply(iris, class)#데이터//함수

sapply(iris[,1:4], function(x){x>3})

tapply(1:10,rep(1,10),sum)#데이터 10개, 그룹은 1개, sum함수 적용시 그룹1에 대한 합계만 도출
#tapply(벡터, 그룹색인, 그룹단위적용함수)

1:10 %% 2 ==1 #1:10 - 1~10 벡터의 합을 2로 나누어서 나머지가 1인수

tapply(1:10,1:10%%2==1,sum)

tapply(iris$Sepal.Length,iris$Species,mean)#종별로 Sepal.Length 평균을 구함
#다양한 용법, 함수를 알아둬야함

#doBy 패키지:데이터를 그룹단위 처리
install.packages("doBy")
library(doBy)
summary(iris)#주어진 데이터set에 대한 간략한 통계 색출
quantile(iris$Sepal.Length) #분위
quantile(iris$Sepal.Length,seq(0,1,by=0.1))

summaryBy(Sepal.Length~Species,iris)
summaryBy(Sepal.Length+Sepal.width~Species,iris)

iris[order(iris$Sepal.Length,iris$Sepal.Width,decreasing =)]

orderBy(~Sepal.width+Sepal.Length,iris)

sample(1:45, 6) #비복원추출 - 로또 수 
#프로젝트 - 요구사항분석 -> 계획 
#-> data 수집(db, web 등등) 
#-> data전처리 (NA,상관관계, 차원축소(pca,lda,t-sne,...), 특징선택(표준화, 정규화))
#-> data 분석(dplyr,...., numpy,pandas, seaborn, matplot....)
#-> modeling algorism 선택(ML(kmeans,knn,dt,rf)/DL()
#-> modeling / model(y=ax+b)
#-> validation check(k-fold)->TP,TN,FP,FN....(성능 확인)
#-> 성능개선
# 척도(precision), recall, f-measure,support

sample(1:45, 6, replace=TRUE) #복원추출
iris[sample(NROW(iris),NROW(iris)),]#서로다른수가 나옴//iris데이터를 뒤죽박죽 섞어놓은것

sampleBy( ~Species,frac=0.1,data=iris)#샘플링에 어떠한 기준을 부여함
#고른분포로 샘플링 하는 함수

sampleBy(~Species, frac=0.1, data=iris)

split(iris, iris$Species)
class(split(iris, iris$Species))

subset(iris, Species=="setosa")
subset(iris, Species=="setosa"&Sepal.Length>5.0)

subset(iris, select=c(Speices,Sepal.Length))
subset(iris, select=-c(Speices,Sepal.Length))

iris[,!names(iris) %in% c("Species", "Sepal.Length")]
names(iris)

merge()  

x<-data.frame(name=c("a","b","c"),math=c(1,2,3))
y<-data.frame(name=c("c","b","a"),eng=c(4,7,9))
cbind(x,y) #단순연결함수
merge(x,y) # name 기준병합

x<-data.frame(name=c("a","b","c"),math=c(1,2,3))
y<-data.frame(name=c("c","b","d"),eng=c(4,7,9))
merge(x,y)
merge(x,y,all=TRUE) #전체 출력

x<-c(5,2,1,4,3)
sort(x)
sort(x,decreasing = TRUE)
x

x<-c(5,2,1,4,3)
order(x)
order(x,decreasing = TRUE)
x

data=list()
n=10
for(c in 1:n){
  data[[c]]=data.frame(Index=c, myChar=sample(letters,1),z=runif(1))
}

df=data.frame(Index=1, myChar=sample(letters,1),z=runif(1))

runif(1) #생성할때마다 서로다른 난수 생성
data

#여러 데이터 프레임 병합
#1. rbind
do.call(rbind,data)
class(do.call(rbind,data))
install.packages("plyr")
#2. ldply -> List // Dataframe
ldply(data,rbind)

#4. rbindlist
install.packages("dplyr")
install.packages("plyr")
install.packages("data.table")
library(data.table)
rbindlist(data)

with(iris, {
mean(iris$Sepal.Length)
})
which.min(iris$Sepal.Length)
which.max(iris$Sepal.Length)


x<-c(7,7,5,5,5,3,3,7,3,7) #최빈수 출력

table(x)
which.max(table(x))
names(which.max(table(x)))

install.packages("RMySQL")
library(RMySQL)
con <- dbConnect(MySQL(),
                 user="root",password="1234", host="127.0.0.1",
                 dbname="rprogramming") #구동기
dbListTables(con)
df<-dbGetQuery(con,"select * from rtest2")
str(df)
class(df)

install.packages("mlbench")
library(mlbench)
data(Ozone)
head(Ozone)

plot(Ozone$V8, Ozone$V9, xlab = "Temp1", ylab = "Temp2", main="Ozone", pch="+", cex=0.5, col="yellow", col.axis="blue", col.lab="red", xlim=c(0,100), ylim=c(0,100))
help(par)

min(Ozone$V8,na.rm=T)
min(Ozone$V9,na.rm=T)
max(Ozone$V8,na.rm=T)
max(Ozone$V9,na.rm=T)

cars
plot(cars)
plot(cars,type="l")#line의 약자
plot(cars,type="b")
plot(cars,type="o")#overlap

#speed로 그룹화하여->dist 평균 출력 프로그램//hint-tapply함수 이용

ds<-tapply(cars$dist,cars$speed, mean)#두번째 인수가 그룹화기준// #세번째 인수는 평균출력//#dist=distance

plot(ds, xlab = "speed", ylab = "dist", type="o", cex=0.5, lty="dashed")#linetype#추이그래프

#figure-창-그래프1 :기본//여러개 그래프 출력도 가능
par() #reset
myPar<-par(mfrow=c(1,2))
plot(Ozone$V8, Ozone$V9 ="a n")
plot(Ozone$V8, Ozone$V9,="b")

par(myPar)

#ggplot2 #패키지 시각화
#1단계|배경 (axes-axis, axis)
#2단계|그래프
#3단계|축,색상...

library(ggplot2)
#1.배경설정
ggplot(data=mpg,aes(x=displ,y=hwy))
#2.그래프
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()
#3.축,색상
ggplot(data=mpg,aes(x=displ,y=hwy))+ # +지점에서 줄바꿔 끊어준다.
  geom_point()+
  xlim(0,10)+
  ylim(0,50)

#ggplot():세부조작, 공모전 ppt 깔끔히 그릴때, 최종적 시각화 ggplot사용
#qplot() : 간단 데이터 확인, 작업중 확인용
#bar graph 출력
library(dplyr)
df<-mpg %>%
  group_by(drv) %>%
  summarise(meanHwy=mean(hwy))
df
ggplot(data=df,aes(x=drv,y=meanHwy))+geom_col()
ggplot(data=df,aes(x=reorder(drv,meanHwy), y=meanHwy))+geom_col()
ggplot(data=df,aes(x=reorder(drv,-meanHwy), y=meanHwy))+geom_col()

summary(mpgae)
#빈도바 그래프
ggplot(data=mpg, aes(x=drv))+geom_bar()
ggplot(data=mpg, aes(x=cty))+geom_bar()
ggplot(data=mpg, aes(x=hwy))+geom_bar()
ggplot(data=mpg, aes(x=cyl))+geom_bar()

#geom_col(): 평균->그래프
#geom_bar(): 빈도->그래프

economics  
  
#finance.yahoo,com

str(economics)
  
ggplot(data=economics, aes(x=date, y=unemploy))+geom_line()


df<-read.csv("067280.KQ.csv")
df
ggplot(data=df, aes(x=High))+geom_bar()

summary(df)

summary(mpg)
mpg
View(mpg)
#ggplot(data=mpg, aes(x=drv))+geom_bar()
ggplot(data=mpg, aes(x=))+geom_bar()












  
  



