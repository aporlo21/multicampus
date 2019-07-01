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
