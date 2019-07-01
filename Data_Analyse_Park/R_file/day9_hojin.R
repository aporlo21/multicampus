#����ġ (Corpus) �ؽ�Ʈ ��ó��
#(����) ��ó�� �м� �ð�ȭ&��ó�� �˰����� �𵨸� ����(�ǵ��) ��������

mytext<-c("software environment",
  "software environment",
  "software\tenvironment")
mytext
library(stringr)
str_split(mytext,' ')

#sapply(�Է�:����Ʈ, ���:����)
#lapply(�Է�:����Ʈ ��� ����Ʈ )

#�� ��Һ� �ܾ��� ����
sapply(str_split(mytext, ' '),length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#�� ����Ʈ ��ҿ� ����� ���ڿ��� ����
sapply(str_split(mytext, ' '),str_length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�

#���� ó�� ����
mytext # \t : ���� 4��
mytext.nowhitespace<-str_replace_all(mytext,"[[:space:]]{1,}"," ") 
mytext
#"hi hello"=>"hi hello" #������ĭ���� ġȯ����

#�� ��Һ� �ܾ��� ����
sapply(str_split(mytext.nowhitespace, ' '),length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#�� ����Ʈ ��ҿ� ����� ���ڿ��� ����
sapply(str_split(mytext.nowhitespace, ' '),str_length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#software ���ڿ��� ����
#environment ���ڿ��� ���� 

#��ҹ�������
mytext<-"The 45th President of the United States, Donald Trump, 
states that he knows how to play trump with the former persident"
mytext
str_split(mytext, '')
myword<-unlist(str_extract_all(mytext, boundary("word"))) #my text������ 2��°�μ� �� ������ �� ���� # ����Ʈ -> ����
myword<-str_replace(myword, "Trump", "Trump_unique_")
myword<-str_replace(myword, "States", "States_unique_")
table(tolower(myword))
mytext<-c("He is one of statisticians agreeing that R is the No. 1 statistical software.",
          "He is one of statisticians agreeing that R is the No. one statistical software.")
str_split(mytext," ")
mytext2<-str_replace_all(mytext,"[[:digit:]]{1,}[[:space:]]{1,}","")
mytext2
mytext2<-str_split(mytext2, " ")
mytext2 #"one" ���� ����


str_c(mytext2[[1]], collapse = " ") #1����Ʈ�� ��� ���� ���
str_c(mytext2[[2]], collapse = " ")

#���� mytext���� ���ڴ� ��� _number_ �� �ϰ� ġȯ 

mytext3 
mytext3<-str_replace_all(mytext,"[[:digit:]]{1,}[[:space:]]{1,}","_number_ ") 
mytext3<-str_split(mytext3, " ")
mytext3
      
mytext<-"Baek et al. (2014) argued that the state of default-setting
is critical for people to protect their own personal privacy on the Internet."             
str_split(mytext, "\\.") # (.) Ư������ó�� �ǹǷ� �������� \\ �� �Բ� �����ؾ���

#"���� ���� et al. �� ����, �̾ (�⵵) ������ ����´� <����>
# => "_reference_" �� �ϰ� ġȯ �ϰ��� ��

mytext2<-str_replace_all(mytext, "-", " ") #��� - ��ȣ�� ����ó���ض�
mytext2
mytext2<-str_replace_all(mytext2, "[[:upper:]]{1}[[:alpha:]]{0,}[[:space:]](et al\\.)[[:space:]]\\([[:digit:]]{4}\\)","_reference_") #��� - ��ȣ�� ����ó���ض� #�׻� �����Ȱ�, ����� ()ó���Ѵ� 
mytext2

str_replace_all(mytext2,"\\.[[:space:]]{0,}", "")
# . �� ����, . �ڿ� ������ 0�� �̻��� ���

#�ҿ�� ���� ���=>�ҿ�� ����
mystopwords<-"(\\ba )|(\\ban )|(\\bthe )"
mytext<-c("She is an actor", "She is the actor")
str_replace_all(mytext, mystopwords,"")
library("tm")
stopwords("en") # en���� ��ϵǾ����ִ� ª�� �ҿ� �ش��ϴ� ���
stopwords("SMART") #�� �ҿ� �ش��ϴ� ���

#��� ����ȭ ó��..
#���� ���� -> ����ȭ 
# ~s, ~es => ����ȭ
#����, ����, ��, ���� .... => ����ȭ

mystemmer.func<-function(mytext){
  mytext<-str_replace_all(mytext,"(\\bwas )|(\\bwere)|(\\bbe )","be ")
  print(mytext)
}
test<-c("I am a boy. You are a boy. He might be a boy")
mytext.stem<-mystemmer.func(test)
table(str_split(test," "))
table(str_split(mytext.stem," "))
#map

#n-gram:2(bi)-gram, 3(tri)-gram
#n�� ���̾� �����ϴ� �ܾ���� ����


#��ҹ��� ����
#n gram + bayes [���Ǻ� Ȯ��) => ���� �ľ� ex) �˻��� ��õ
#( � ������ �־��� ��Ȳ���� � ��Ȳ�� ������ Ȯ�� ���� ex ������ �� ��Ȳ���� �� �� Ȯ�� ) 
# Ȯ������ ���� ���� ���� ��õ �˻�� ���.
mytext<-"The United States comprises fifty states. In the United States, each state has its own laws. However, federal law overrides state law in the United States."

myword<-unlist(str_extract_all(mytext, boundary("word")))
sum(table("word"))
#-------------------------------------------------------
mytext.2gram<-(str_replace_all(mytext, "\\b"))
myword2-> unlist*str()

mytext

library("p,")
#! 2�ܾ �����Ͽ� ���
# the United 44

library(tm)
my.text.location<-"papers/"
#����ġ ����
mypaper<-VCorpus(DirSource(my.text.location))
mypaper
summary(mypaper)

class(mypaper)
mypaper[[3]]$content
mypaper[[2]]
mypaper[[3]]

mypaper[[2]]$meta
meta(mypaper[[2]], tag='author')<-"G. D"
mypaper[[2]]$meta
#�ܾ�_Ư������(#@$%^...)_�ܾ�
myfunc<-function(x){str_extract_all(x,"[[:alnum:]]{1,}[[:punct:]]{1,}[[:alnum:]]{1,}")}
lapply(mypaper,myfunc)
mypuncts<-lapply(mypaper,myfunc)
table(unlist(mypuncts))

#��ġ�ε� �ڷ� ����
myfunc<-function(x){str_extract_all(x,"[[:d]]{1,}")}
mydigits<-lapply(mypaper,myfunc)
table(unlist(mydigits))
#�빮�ڷ� �����ϴ� �ܾ� ���� (��������)
myfunc<-function(x){str_extract_all(x,"[[:uppers]]{1}")}
myuppers<-lapply(mypaper,myfunc)
table(unlist(myuppers))
#tm_map : ���� ����
mycorpus<-tm_map(mypaper, removeNumbers)
mycorpus[[1]]$content

removePunctuation("hello.....world")
install.packages("SnowballC")
library(SnowballC)
wordStem(c("learn", "learns", "learning", "learned"))
#cleaned<-tm_map(���۽� ����, stemDocument)
mypaper<-VCorpus(DirSource(my.text.location))
mypaper[[1]]$content
cleaned<-tm_map(mypaper,stemDocument)
cleaned[[1]]$content

mycorpuse<-tm_map(mypaper, removeNumbers)
mytempfunc<-function(myobject,oldexp,newexp){
  newobject<-tm_map(myobject,content_transformer)
         function(x,pattern) 
           gsub(pattern, newexp, x)
}


mycorpus <- mytempfunc(mycorpus,"-collar","collar")
mycorpus <- mytempfunc(mycorpus,"\\b((c|C)o-)","co") #co�� �ٲ��
mycorpus <- mytempfunc(mycorpus,"\\b((c|C)ross-)","cross") 
mycorpus <- mytempfunc(mycorpus,"e\\.g\\.","for example")
mycorpus <- mytempfunc(mycorpus,"i\\.e\\.","that is")
mycorpus <- mytempfunc(mycorpus,"\\'s","")
mycorpus <- mytempfunc(mycorpus,"s��","s")
mycorpus <- mytempfunc(mycorpus,"ICD-","ICD")
mycorpus <- mytempfunc(mycorpus,"\\b((i|I)nter-)","inter")
mycorpus <- mytempfunc(mycorpus,"K-pop","Kpop")
mycorpus <- mytempfunc(mycorpus,"\\b((m|M)eta-)","meta")
mycorpus <- mytempfunc(mycorpus,"\\b((o|O)pt-)","opt")
mycorpus <- mytempfunc(mycorpus,"\\b((p|P)ost-)","post")
mycorpus <- mytempfunc(mycorpus,"-end","end")
mycorpus <- mytempfunc(mycorpus,"\\b((w|W)ithin-)","within")
mycorpus <- mytempfunc(mycorpus,"=","is equal to")
mycorpus <- mytempfunc(mycorpus,"and/or","and or")
mycorpus <- mytempfunc(mycorpus,"his/her","his her")
mycorpus <- mytempfunc(mycorpus,"-"," ")
#��ҹ��� -> �ҹ��� ġȯ
mycorpus[[2]]$content
mycorpus<-tm_map(mycorpus, content_transformer(tolower), stripWhitespace) # transformer : corpuse->str��ȯ�۾������Լ�#stripWhitespace : ���ʳ��� ������ ������
#�ҿ�� ���� ���� -> ����
mycorpus<-tm_map(mycorpus,removeWords,words=stopwords("SMART")) #stopwords : 
#��� ����ȭ

stopwords("SMART")


mycorpus<-tm_map(mycorpus, stemDocument, language="en")
# TF-IDF : corpus������ word�� ����
 ccscs
#d1 ~ d3 �� �������� ����s c�߿��� �ܾ�? => ����ã��

#TF/IDF

#����*�ܾ� ���
#DTM
#����:���� ����:�ܾ�
DocumentTermMatrix(mycorpus)
#TermDocumnetMatrix
install.packages(dtm.e)
dtm
inspect(dtm.e[1:3, 50:60])