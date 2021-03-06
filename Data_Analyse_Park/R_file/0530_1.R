library(rvest)

#----------------------------------------------------------------
# asiana air

allReviews_A<-c() #초기화

url_default_A<-"https://www.tripadvisor.com/Airline_Review-d8729024-Reviews-or"
for(page in seq(from = 1,to=1325,by=5)){
  
  url_A<-paste(url_default_A,page,"-Asiana-Airlines#REVIEWS",sep="")
  htmlTxt_A<-read_html(url_A)
  review_A<-html_nodes(htmlTxt_A,".location-review-review-list-parts-ReviewTitle__reviewTitleText--2tFRT")
  reviews_A<-html_text(review_A)
  allReviews_A<-c(allReviews_A,reviews_A)
  print(url_A)
}

allReviews_A
print(reviews_A)
write.table(allReviews_A,"review_A.txt")

#--------------------------------------------------------------
# korean air

allReviews_K<-c() #초기화

url_default_K<-"https://www.tripadvisor.com/Airline_Review-d8729105-Reviews-or"
for(page in seq(from = 1,to=2610,by=5)){
  
  url_K<-paste(url_default_K,page,"-Korean-Air#REVIEWS",sep="")
  htmlTxt_K<-read_html(url_K)
  review_K<-html_nodes(htmlTxt_K,".location-review-review-list-parts-ReviewTitle__reviewTitleText--2tFRT")
  reviews_K<-html_text(review_K)
  allReviews_K<-c(allReviews_K,reviews_K)
  print(url_K)
}

allReviews_K
print(reviews_K)
write.table(allReviews_K,"review_K.txt")

#-----------------------------------------------

# asiana air

allReviews_A_1<-c() #초기화

url_default_A_1<-"https://www.tripadvisor.com/Airline_Review-d8729024-Reviews-or"
for(page in seq(from = 1,to=1325,by=5)){
  
  url_A_1<-paste(url_default_A_1,page,"-Asiana-Airlines#REVIEWS",sep="")
  htmlTxt_A_1<-read_html(url_A_1)
  review_A_1<-html_nodes(htmlTxt_A_1,".common-text-ReadMore__content--2X4LR")
  reviews_A_1<-html_text(review_A_1)
  allReviews_A_1<-c(allReviews_A_1,reviews_A_1)
  print(url_A_1)
}

allReviews_A_1
print(reviews_A_1)
write.table(allReviews_A_1,"review_A_1.txt")

#--------------------------------------------------------------
# korean air

allReviews_K_1<-c() #초기화

url_default_K_1<-"https://www.tripadvisor.com/Airline_Review-d8729105-Reviews-or"
for(page in seq(from = 1,to=2610,by=5)){
  
  url_K_1<-paste(url_default_K_1,page,"-Korean-Air#REVIEWS",sep="")
  htmlTxt_K_1<-read_html(url_K_1)
  review_K_1<-html_nodes(htmlTxt_K_1,".common-text-ReadMore__content--2X4LR")
  reviews_K_1<-html_text(review_K_1)
  allReviews_K_1<-c(allReviews_K_1,reviews_K_1)
  print(url_K_1)
}

allReviews_K_1
print(reviews_K_1)
write.table(allReviews_K_1,"review_K_1.txt")

#-------------------------------------------------------

library(dplyr)
library(stringr)
library(tm) #tm_map : 숫자 제거

a<-tolower(allReviews_A)
a
b<-str_replace_all(a, "[[:punct:]]{1,}", "") #단어_특수문자(#@$%^...)_단어
b
c<-str_split(b, " ")
c

table(unlist(c))
d<-as.data.frame(table(unlist(c)))
d

library(tidytext) #tidytext형태로 데이터를 구성
e<-as.data.frame(get_sentiments("afinn"))
e

d<-rename(d, word=Var1)
f<-inner_join(d, e, by="word")
f

g1<-f %>%
  arrange(desc(Freq)) %>%
  head(11)

g2<-f %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  head(11)

g3<-f %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  tail(11)

library(ggplot2)
ggplot(data=g1,aes(x=word,y=Freq)) + geom_col()
ggplot(data=g2,aes(x=word,y=imp)) + geom_col()
ggplot(data=g3,aes(x=word,y=imp)) + geom_col()


#------------------------------------------

a1<-tolower(allReviews_K)
a1
b1<-str_replace_all(a1, "[[:punct:]]", "") #단어_특수문자(#@$%^...)_단어
b1
c1<-str_split(b1, " ")
c1

table(unlist(c1))
d1<-as.data.frame(table(unlist(c1)))
d1

library(tidytext) #tidytext형태로 데이터를 구성
e1<-as.data.frame(get_sentiments("afinn"))
e1

d1<-rename(d1, word=Var1)
f1<-inner_join(d1, e1, by="word")
f1

table

g_1<-f1 %>%
  arrange(desc(Freq)) %>%
  head(11)

g_2<-f1 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  head(11)

g_3<-f1 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  tail(11)

g_4<-f1 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp))


g_5<-rbind(g_2,g_3)

g_5

library(ggplot2)
library(dplyr)
library(ggplot2)
library(scales)
library(RColorBrewer)
for(i in 1:22)
  test <-union(test,"red")
temp <- g_5 %>% ggplot(aes(x=word,y=imp)) + geom_bar(stat='identity')
temp + scale_fill_manual(values=test)
test <-c()

ggplot(data=g_1,aes(x=word,y=Freq)) + geom_col()
ggplot(data=g_2,aes(x=word,y=imp)) + geom_col()
ggplot(data=g_3,aes(x=word,y=imp)) + geom_col()
ggplot(data=g_5,aes(x=word,y=imp)) + geom_col()



f1
ggplot(data=f1, aes(word, freq, fill=group))+geom_bar(stat='g_1', position='g_2')

#---------------------------------------------

library(dplyr)
library(stringr)
library(tm) #tm_map : 숫자 제거

a2<-tolower(allReviews_A_1)
a2
b2<-str_replace_all(a2, "[[:punct:]]", "") #단어_특수문자(#@$%^...)_단어
b2
c2<-str_split(b2, " ")
c2

table(unlist(c2))
d2<-as.data.frame(table(unlist(c2)))
d2

library(tidytext) #tidytext형태로 데이터를 구성
e2<-as.data.frame(get_sentiments("afinn"))
e2

d2<-rename(d2, word=Var1)
f2<-inner_join(d2, e2, by="word")
f2

g11<-f2 %>%
  arrange(desc(Freq)) %>%
  head(11)

g22<-f2 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  head(11)

g33<-f2 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  tail(11)

library(ggplot2)
ggplot(data=g11,aes(x=word,y=Freq)) + geom_col()
ggplot(data=g22,aes(x=word,y=imp)) + geom_col()
ggplot(data=g33,aes(x=word,y=imp)) + geom_col()



#------------------------------------------------------------

a3<-tolower(allReviews_K_1)
a3
b3<-str_replace_all(a3, "[[:punct:]]", "") #단어_특수문자(#@$%^...)_단어
b3
c3<-str_split(b3, " ")
table(unlist(c3))

table(unlist(c3))
d3<-as.data.frame(table(unlist(c3)))
d3

library(tidytext) #tidytext형태로 데이터를 구성
e3<-as.data.frame(get_sentiments("afinn"))
e3

d3<-rename(d3, word=Var1)
f3<-inner_join(d3, e3, by="word")
f3

g1_1<-f3 %>%
  arrange(desc(Freq)) %>%
  head(11)

g2_2<-f3 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  head(11)

g3_3<-f3 %>% 
  group_by(word) %>% 
  summarise(imp=Freq*score) %>% 
  arrange(desc(imp)) %>% 
  tail(11)

library(ggplot2)
ggplot(data=g1_1,aes(x=word,y=Freq)) + geom_col()
ggplot(data=g2_2,aes(x=word,y=imp)) + geom_col()
ggplot(data=g3_3,aes(x=word,y=imp)) + geom_col()
