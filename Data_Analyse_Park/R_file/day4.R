#na.strings - read.csv // �ش繮�ڿ��� ��� NAó����
#write.csv //
c(1,2,3)
c(4,5,6)
rbind(c(1,2,3), c(4,5,6)) #����ġ��
x<-data.frame(id=c(1,2),name=c("a","b"),stringsAsFactors = F)
x
str(x)

y<-rbind(x,c(3,"c"))
y #���߰�

cbind(c(1,2,3), c(4,5,6)) #����ġ��

#apply �Լ� : r - vector�ڷᱸ�� �� ���� Ư���Լ��� �����ϰ� ������ ����
#lapply : List �������� ����Ǵ� apply�Լ� 
#��Į�� : 0����, ����:������������ data����(����) ���:2��������
#list : �ڷᱸ��, data type�� ��� �޶� �����. list ���� �پ��� �ڷᱸ�� (���,���� ��� ) ������ ������<->���,���� - ������ ������ ��� ���ƾ� ��
#sapply : return���� vector or matrix�� �����
#tapply : �ڷ�ó���� ���� ������ �ΰ��Ͽ� �̿� ���� �׷����Ѵ�. ���� �׷쿡 ���ؼ� �Լ��� �����Ѵ�.
a<-matrix(1:9,ncol=3)#col�� ���� 3
a#������ �࿡ ���� ���� ����
apply(a,1,sum)#~�� �ڷῡ ~�Լ��� �����ض�, FUN=1or2�� ǥ����
apply(a,2,sum)

head(iris)
str(iris)
#1~4�������� ���� �� ���� �հ� 
apply(iris[,1:4], 2, sum)
iris

rowSums(iris[,1:4])#colSums
rowMeans(iris[,1:4])#colMeans

res<-lapply(1:3, function(x) {x*2})#ù��°�μ��� ���� 2��°�μ������ �����Ѵ� // ������ �ڷῡ ���� 2��//vector or list ����
res

res[[3]]
class(res)#lapply�Լ� ����
#list -> vector
res<-unlist(res)
res
class(res)

x<-list(a=1:3, b=4:6)
x

lapply(x,mean)#��� ���ϴ� �Լ���
lapply(iris[,1:4], mean)

class(iris[,1:4])
class(lapply(iris[,1:4],mean))
class(as.data.frame(lapply(iris[,1:4],mean)))

class(lapply(iris[,1:4],mean)) #����Ʈ
class(sapply(iris[,1:4],mean)) #���� 
sapply(iris, class)#������//�Լ�

sapply(iris[,1:4], function(x){x>3})

tapply(1:10,rep(1,10),sum)#������ 10��, �׷��� 1��, sum�Լ� ����� �׷�1�� ���� �հ踸 ����
#tapply(����, �׷����, �׷���������Լ�)

1:10 %% 2 ==1 #1:10 - 1~10 ������ ���� 2�� ����� �������� 1�μ�

tapply(1:10,1:10%%2==1,sum)

tapply(iris$Sepal.Length,iris$Species,mean)#������ Sepal.Length ����� ����
#�پ��� ���, �Լ��� �˾Ƶ־���

#doBy ��Ű��:�����͸� �׷���� ó��
install.packages("doBy")
library(doBy)
summary(iris)#�־��� ������set�� ���� ������ ��� ����
quantile(iris$Sepal.Length) #����
quantile(iris$Sepal.Length,seq(0,1,by=0.1))

summaryBy(Sepal.Length~Species,iris)
summaryBy(Sepal.Length+Sepal.width~Species,iris)

iris[order(iris$Sepal.Length,iris$Sepal.Width,decreasing =)]

orderBy(~Sepal.width+Sepal.Length,iris)

sample(1:45, 6) #�񺹿����� - �ζ� �� 
#������Ʈ - �䱸���׺м� -> ��ȹ 
#-> data ����(db, web ���) 
#-> data��ó�� (NA,�������, �������(pca,lda,t-sne,...), Ư¡����(ǥ��ȭ, ����ȭ))
#-> data �м�(dplyr,...., numpy,pandas, seaborn, matplot....)
#-> modeling algorism ����(ML(kmeans,knn,dt,rf)/DL()
#-> modeling / model(y=ax+b)
#-> validation check(k-fold)->TP,TN,FP,FN....(���� Ȯ��)
#-> ���ɰ���
# ô��(precision), recall, f-measure,support

sample(1:45, 6, replace=TRUE) #��������
iris[sample(NROW(iris),NROW(iris)),]#���δٸ����� ����//iris�����͸� ���׹��� ���������

sampleBy( ~Species,frac=0.1,data=iris)#���ø��� ��� ������ �ο���
#���������� ���ø� �ϴ� �Լ�

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
cbind(x,y) #�ܼ������Լ�
merge(x,y) # name ���غ���

x<-data.frame(name=c("a","b","c"),math=c(1,2,3))
y<-data.frame(name=c("c","b","d"),eng=c(4,7,9))
merge(x,y)
merge(x,y,all=TRUE) #��ü ���

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

runif(1) #�����Ҷ����� ���δٸ� ���� ����
data

#���� ������ ������ ����
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


x<-c(7,7,5,5,5,3,3,7,3,7) #�ֺ�� ���

table(x)
which.max(table(x))
names(which.max(table(x)))

install.packages("RMySQL")
library(RMySQL)
con <- dbConnect(MySQL(),
                 user="root",password="1234", host="127.0.0.1",
                 dbname="rprogramming") #������
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
plot(cars,type="l")#line�� ����
plot(cars,type="b")
plot(cars,type="o")#overlap

#speed�� �׷�ȭ�Ͽ�->dist ��� ��� ���α׷�//hint-tapply�Լ� �̿�

ds<-tapply(cars$dist,cars$speed, mean)#�ι�° �μ��� �׷�ȭ����// #����° �μ��� ������//#dist=distance

plot(ds, xlab = "speed", ylab = "dist", type="o", cex=0.5, lty="dashed")#linetype#���̱׷���

#figure-â-�׷���1 :�⺻//������ �׷��� ��µ� ����
par() #reset
myPar<-par(mfrow=c(1,2))
plot(Ozone$V8, Ozone$V9 ="a n")
plot(Ozone$V8, Ozone$V9,="b")

par(myPar)

#ggplot2 #��Ű�� �ð�ȭ
#1�ܰ�|��� (axes-axis, axis)
#2�ܰ�|�׷���
#3�ܰ�|��,����...

library(ggplot2)
#1.��漳��
ggplot(data=mpg,aes(x=displ,y=hwy))
#2.�׷���
ggplot(data=mpg,aes(x=displ,y=hwy))+geom_point()
#3.��,����
ggplot(data=mpg,aes(x=displ,y=hwy))+ # +�������� �ٹٲ� �����ش�.
  geom_point()+
  xlim(0,10)+
  ylim(0,50)

#ggplot():��������, ������ ppt ����� �׸���, ������ �ð�ȭ ggplot���
#qplot() : ���� ������ Ȯ��, �۾��� Ȯ�ο�
#bar graph ���
library(dplyr)
df<-mpg %>%
  group_by(drv) %>%
  summarise(meanHwy=mean(hwy))
df
ggplot(data=df,aes(x=drv,y=meanHwy))+geom_col()
ggplot(data=df,aes(x=reorder(drv,meanHwy), y=meanHwy))+geom_col()
ggplot(data=df,aes(x=reorder(drv,-meanHwy), y=meanHwy))+geom_col()

summary(mpgae)
#�󵵹� �׷���
ggplot(data=mpg, aes(x=drv))+geom_bar()
ggplot(data=mpg, aes(x=cty))+geom_bar()
ggplot(data=mpg, aes(x=hwy))+geom_bar()
ggplot(data=mpg, aes(x=cyl))+geom_bar()

#geom_col(): ���->�׷���
#geom_bar(): ��->�׷���

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












  
  


