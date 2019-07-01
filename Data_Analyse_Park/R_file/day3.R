install.packages("dplyr")
library(dplyr)

exam<-read.csv("Data/csv_exam.csv")
exam

exam %>%
  mutate(tot=math+english+science) %>% #변형하여 새로운 무엇인가를 생성
  head

exam %>%
  mutate(tot=math+english+science,
         avg=(math+english+science)/3) %>% #변형하여 새로운 무엇인가를 생성
  head

exam %>%
  mutate(tot=math+english+science,
         avg=tot/3) %>% #변형하여 새로운 무엇인가를 생성
  head

exam %>%
  mutate(res=ifelse(science>=60,"pass","fail")) %>%
  head

exam %>%
  mutate(tot=math+english+science,
         avg=tot/3) %>% #오름차순 정리
  arrange(tot) %>%
  head

# :: 구분자 ( 패키지 // 함수)

exam %>% summarise(meanMath=mean(math))

table(exam$class)#반 별 수학점수의 평균
exam %>%
  group_by(class) %>%
  summarise(meanMath=mean(math))

exam %>%
  group_by(class) %>%
  summarise(meanMath=mean(math),
            medianMath=median(math),
            sumMath=sum(math),
            count=n()

exam %>%
  group_by(class) %>%
  summarise(meanMath=mean(math),
            medianMath=median(math),
            sumMath=sum(math),
            count=n(),
            sdMath=sd(math),
            minMath=min(math),
            maxMath=max(math))

str(mpg)
#제조사 별, 구동방식별 그룹화
mpg %>%
  group_by(manufacturer, drv) %>%
  summarise(meanCty=mean(cty)) %>%
  head(20)

#자동차 제조사별로 그룹화, suv 자동차 추출
#hwy, cty연비 평균, 내림차순정렬, 상위5개 출력
mpg %>%
  group_by(manufacturer) %>%
  filter(class=="suv") %>% #ctrl + shift + m
  mutate(avg=(hwy+cty)/2) %>% #변형하여 새로운 column 생성(11->12)
  summarise(meanAvg=mean(avg)) %>% #모든 연비 평균에 대한 전체 평균//각각모델에
  arrange(meanAvg) %>%
  head(5)

#dataset : 분석작업 및 모델링시 대다수 여러개의 dataset을 활용하여 한다. 
mid<-data.frame(sid=c(100,200,300,400,500),
                scoreMid=c(90,90,50,70,100))
final<-data.frame(sid2=c(100,200,300,400,500),
                scoreFinal=c(70,80,60,80,90))
tot<-left_join(mid,final,by=c("sid"="sid2"))
tot

tName<-data.frame(teacher=c("aaa","bbb","ccc","ddd","eee"),
                  class=c(1,2,3,4,5))
tName
exam_new<-left_join(exam,tName,by="class")
exam_new

mid<-data.frame(sid=c(100,200,300,400,500),
                scoreMid=c(90,90,50,70,100))
final<-data.frame(sid=c(600,700,800,900,1000),
                  scoreFinal=c(70,80,60,80,90))
exam_all<-bind_rows(mid,final)
exam_all

mid<-data.frame(sid=c(100,200,300,400,500),
                score=c(90,90,50,70,100))
final<-data.frame(sid=c(600,700,800,900,1000),
                  score=c(70,80,60,80,90))
exam_all<-bind_rows(mid,final)
exam_all

#결측치, 결측값 - 누락되어지는 값 - NA 처리
#NA+3=>NA
df<-data.frame(sex=c("F","M",NA,"M","F"),
               score=c(50,40,40,30,NA))
df

is.na(df)
table(is.na(df))
table(is.na(df$sex))
table(is.na(df$score))

mean(df$score)


#NA가 포함된 행 제거
df %>%
  filter(!is.na(score))#filter함수는 조건에 부합되는, 참인 data만 추출됨

dfnomiss<-df %>%
  filter(!is.na(score))

sum(dfnomiss$score)
mean(dfnomiss$score)

#df의 sex, score에서 NA가 포함된 행을 제외하여 dfmomiss에 저장(총 3개)

dfnomiss<-df %>%
  filter(!is.na(score)&!is.na(sex))
dfnomiss

na.omit(df) #결측치 존재시 해당행 삭제
dfnomiss2<-na.omit(df)
dfnomiss2

mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

exam[2,] #2번인덱스 해당만 출력
exam[c(2,5,10),"science"]<-NA #다수의 인덱스 출력시 c를 통해 하나로 묶어추출
exam

exam %>% summarise(meanSci=mean(science, na.rm=T)) #na.rm=T:na제거

mean(exam$science,na.rm=T)

#결측치를 평균으로 대체
exam$science<-ifelse(is.na(exam$science),60,exam$science)
table(is.na(exam$science))

exam
mean(exam$science)

#표준화 필수 

#이상치 : 존재 불가능 값 - 학년 -3
#를 
data<-data.frame(g=c(1,2,3,-3,6),
                s=c(5,4,3,3,2))
data
table(data$g)
data$g<-ifelse(data$g==-3, NA, data$g)


#s컬럼 값이 3보다 작으면 NA처리
data$s<-ifelse(data$s<3,NA,data$s)
data

data %>% 
  filter(!is.na(g) & !is.na(s)) %>% 
  summarise(ms=mean(s))
#성인 몸무게 : 30kg-150kg
#iqr*1,5 벗어나는경우, 상하위 0.3% 벗어나는 경우 - 극단치
boxplot(mpg$cty)

boxplot(mpg$hwy)$stats
bo 

ifelse(mpg$hwy<12|mpg$hwy>37, NA, mpg$hwy)
table(is.na(mpg$hwy))
#na를 제외한후, (구동방식)hwy의 평균
str(mpg)
mpg %>% 
  group_by(drv) %>% 
  summarise(hMean=mean(hwy, na.rm=T))

x<-c("a","b","c")
str(x)
as.character(as.factor(x))
#자료구조 겨봔
a<-matrix(1:6,ncol=2)
class(a)
dfa<-as.data.frame(a)
class(dfa)
b<-data.frama(matrix(1:10, nco1=5))
              
x<-1:5
class(x)
ifelse(x %>% 2==0, "even number", "")
for(i in 1:10){
  print(i)  
}

i<-0
while(i<10){
  i<-i+1
  print(i)
}

x<-data.frame(a=c(1,2,3),
              b=c("a",NA,"c"),
              c=c("a","b",NA))

na
df<-data.frame(x=1:5,y=seq(2,10,2))
df
df[3,2]<-NA
resid(lm(y~x, data=df, na.action=na.omit))
#residual:실제값과 예측값 사이의 차이
#im: linear model 선형모델 함수 = 방정식 => 오차를 최소화시킴
#실제값과 예측값간 거리(error)가 가까워야함
resid(lm(y~x, data=df, na.action=na.exclude))

f<-function(a,b){
  print(a)
  print(b)
}
f(1,2)
f(b=1, a=2)

head(iris)
str(iris)

iris3

library(help=datasets) #데이터셋 차용

 ㅡ



















