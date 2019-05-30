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
