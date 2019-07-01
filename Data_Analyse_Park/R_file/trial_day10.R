install.packages("RWeka")
library(RWeka)
library(tm)
mytext<-c("The United States comprises fifty states.", "In the United States, each state has its own laws.", "However, federal law overrides state law in the United States.")
mytext

#말뭉치 생성
mytemp<-VCorpus(VectorSource(mytext)) #벡터로부터 바로 corpus 생성
mytemp
ngram.tdm<-TermDocumentMatrix(mytemp)
ngram.tdm
inspect(ngram.tdm) #해당단어 빈도수 체크 

bigramTokenizer<-function(x)
  NGramTokenizer(x, Weka_control(min=2,max=3))
ngram.tdm<-TermDocumentMatrix(mytemp, control=list(tokenize=bigramTokenizer))
str(ngram.tdm)
ngram.tdm$dimnames$Terms
ngram.tdm[,]

bigramlist<-apply(ngram.tdm[,], 1, sum)
sort(bigramlist,decreasing=TRUE)
