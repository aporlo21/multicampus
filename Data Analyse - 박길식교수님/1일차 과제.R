#1번
mpg1 <- mpg %>% select(class,cty)
mpg1

#2번
mpg2_1 <- mpg %>% filter(class=="suv")
mpg2_2 <- mpg %>% filter(class=="compact")
ifelse(mean(mpg2_1$cty)>mean(mpg2_2$cty),"suv","compact")

#3번
mpg3 <- mpg %>% filter(manufacturer=="audi")
mpg3 %>%arrange(desc(hwy)) %>% head(5)

#4번
midwest <- data.frame(midwest)               
class(midwest)
str(midwest)

#5번
library(dplyr)
midwest <- rename(midwest,total=poptotal)
midwest <- rename(midwest,asian=popasian)
midwest

#6번
midwest$totperasian <- midwest$asian/midwest$total
midwest$totperasian
hist(midwest$totperasian)

#7번
midwest$Hasian <- ifelse(mean(midwest$totperasian)<midwest$totperasian,"large","small")
midwest$Hasian

#8번
table(midwest$Hasian)
qplot(x=midwest$Hasian)
