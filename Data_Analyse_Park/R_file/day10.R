install.packages("RWeka")
library(RWeka)
library(tm)
mytext<-c("The United States comprises fifty states.", "In the United States, each state has its own laws.", "However, federal law overrides state law in the United States.")
mytext
#����ġ ����
mytemp<-VCorpus(VectorSource(mytext))
#       VCorpus(DirSource("���"))
ngram.tdm<-TermDocumentMatrix(mytemp)
ngram.tdm
inspect(ngram.tdm)

bigramTokenizer<-function(x) 
  NGramTokenizer(x, Weka_control(
    min=2,max=3))
ngram.tdm<-TermDocumentMatrix(mytemp, 
                   control=list(
                     tokenize=
                       bigramTokenizer))
str(ngram.tdm)
ngram.tdm$dimnames$Terms

ngram.tdm[,]

#��ü �������� �ش� �ܾ ��� ����
bigramlist<-apply(ngram.tdm[,], 1, sum)
sort(bigramlist,decreasing=TRUE)

#���� ����
#mycorpus���� �� �۾��� ����
#�ֻ��� 10���� ����(Ʈ����)�׷��� ����


#�ѱ��� ó��
install.packages("KoNLP")
library(KoNLP)
library(stringr)
library(rJava)

library(tm)
mytextlocation<-"����/"
#���ϵ��� ��� �����ͼ� ���۽� ����
mypaper<-VCorpus(DirSource(mytextlocation))
mykorean<-mypaper[[19]]$content
mykorean
library(stringr)
#������ ����
mykorean<-str_replace_all(mykorean, "[a-zA-Z]", "") #�빮�ڵ� �����ؾ� �ϴ� ��쿡�� A-Z
mykorean

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
inspect(mycorpus[[3]])
mycorpus<-mytempfunct(mycorpus, "[[:lower:]]","")
inspect(mycorpus[[3]])
mycorpus<-mytempfunct(mycorpus, "[[:upper:]]","")
inspect(mycorpus[[3]])
mycorpus<-mytempfunct(mycorpus, "\\(","")
mycorpus<-mytempfunct(mycorpus, "\\)","")
inspect(mycorpus[[3]])

mycorpus<-mytempfunct(mycorpus, "-","")
mycorpus<-mytempfunct(mycorpus, "_","")
inspect(mycorpus[[3]])

mycorpus<-mytempfunct(mycorpus, "\\?","")
inspect(mycorpus[[3]])

mycorpus<-mytempfunct(mycorpus, "/","")
mycorpus<-mytempfunct(mycorpus, "\\.","")
mycorpus<-mytempfunct(mycorpus, " �� ","")
mycorpus<-mytempfunct(mycorpus, "��","")
mycorpus<-mytempfunct(mycorpus, "��","")
mycorpus<-mytempfunct(mycorpus, "\\,","")

inspect(mycorpus[[3]])

mycorpus<-tm_map(mycorpus, stripWhitespace)

myNounFun<-function(mytext){
  myNounList<-paste(extractNoun(mytext),
                    collapse = " ")
  return(myNounList)
  #print(myNounList)
}
#mycorpus[[3]]$content
myNounListRes<-myNounFun(mycorpus[[3]]$content)
myNounListRes
#mycorpus[[2]]$content���뿡 ����
#���� ����Ʈ�� ���

myNounCorpus<-mycorpus
length(mycorpus)
for(i in 1:length(mycorpus)){
  myNounCorpus[[i]]$content<-
    myNounFun(mycorpus[[i]]$content)
}
myNounCorpus[[19]]$content

table(unlist(lapply(myNounCorpus,function(x) 
  str_extract_all(x,boundary("word")))))
# "Ŀ�´�[[:alpha:]]{1,}","Ŀ�´����̼�"
imsi<-myNounCorpus
#length(imsi)
for(i in 1:length(myNounCorpus)){
  myNounCorpus[[i]]$content<-
    str_replace_all(imsi[[i]]$content,
                    "Ŀ�´�[[:alpha:]]{1,}",
                    "Ŀ�´����̼�")
  myNounCorpus[[i]]$content<-
    str_replace_all(imsi[[i]]$content,
                    "��Ű��ũ��[[:alpha:]]{1,}",
                    "��Ű��ũ��")
}
dtm.k<-DocumentTermMatrix(myNounCorpus)
dtm.k
colnames(dtm.k)

# mytext<-str_replace_all(mykorean, "[��-�R]", "") #�빮�ڵ� �����ؾ� �ϴ� ��쿡�� A-Z
# mytext<-str_replace_all(mykorean, "[��-�R]", "") #�빮�ڵ� �����ؾ� �ϴ� ��쿡�� A-Z

#mytext<-str_replace_all(mykorean, "[[:lower:]]", "")
# mykorean<-str_replace_all(mykorean, "\\(", "")
# mykorean<-str_replace_all(mykorean, "\\)", "")
# mykorean<-str_replace_all(mykorean, " �� ", "")
# mykorean<-str_replace_all(mykorean, "��", "")
# mykorean<-str_replace_all(mykorean, "��", "")
# mykorean
# 
# noun.mytext<-extractNoun(mykorean)
# table(noun.mytext)

#���� ǥ�� ����

word.freq<-apply(dtm.k[,],2,sum)
head(word.freq)
length(word.freq)
sort.word.freq<-sort(word.freq, decreasing = TRUE)
sort.word.freq[1:20]
cumsum.word.freq<-cumsum(sort.word.freq)
cumsum.word.freq[1:20]

prop.word.freq<-cumsum.word.freq/cumsum.word.freq[length(cumsum.word.freq)]
#   /��ü ������
prop.word.freq[1:20]
plot(1:length(word.freq), prop.word.freq, type='l')
library("wordcloud")
library(RColorBrewer)
mypal=brewer.pal(4,"Dark2")
wordcloud(names(word.freq),
          freq=word.freq,
          min.freq = 5,
          col=mypal, 
          random.order = FALSE, 
          scale=c(4,0.2))
#names(word.freq)

  #"��-�R"
#"a-z"

#������, ��������

teens<-read.csv("Data/sns.csv")
str(teens)

table(teens$gender)

table(teens$gender, useNA = "ifany")
summary(teens$age)

teens$age<-ifelse(teens$age>=13 & 
                    teens$age<20,
                  teens$age,
                  NA)
summary(teens$age)

#teens$female<-ifelse(teens$gender=="F", 1, 0)
teens$female<-ifelse(teens$gender=="F" & !is.na(teens$gender), 1, 0)
teens$nogender<-ifelse(is.na(teens$gender),1,0)
table(teens$gender, useNA = "ifany")
table(teens$female)
table(teens$nogender)

mean(teens$age)
mean(teens$age, na.rm=TRUE)
table(teens$gradyear)
class(aggregate(data=teens,age~gradyear,mean,na.rm=TRUE))
#"data.frame"���� ���

ave_age<-ave(teens$age, teens$gradyear, 
    FUN=function(x) mean(x,na.rm=TRUE))
#���ͷ� ���
class(ave_age)
teens$age<-ifelse(is.na(teens$age),
                  ave_age,teens$age)
summary(teens$age)

str(teens)
interests<-teens[5:40]
interests

#ǥ��ȭ
interests_z<-as.data.frame(lapply(interests, 
                                  scale))
interests_z
# ����ȭ : 0~1�� ����
# ǥ��ȭ : ����/��������


set.seed(2345)
teen_clusters<-kmeans(interests_z, 5)

str(teen_clusters)

teen_clusters$size
teen_clusters$clustercen<-teen_clusters$centers
teen_clusters$clustercen
str(teen_clusters)

#teen_clusters[1:5,]
str(teen_clusters)
table(teen_clusters$cluster)

#�� Ŭ�����Ϳ� ���� ������ ����� ���






set.seed(2345)
teen_clusters<-kmeans(interests_z,5)
teen_clusters$size
teen_clusters$centers
teen_clusters$cluster

teens$cluster<-teen_clusters$cluster
str(teens)
aggregate(data=teens,age~cluster,mean)

aggregate(data=teens,female~cluster,mean)

aggregate(data=teens,friends~cluster,mean)




