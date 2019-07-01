#1
mpg
mpg2<-mpg %>% select (cty, class)
mpg2

#2
mpg_suv<-mpg %>% filter(class=="suv")
mpg_compact<- mpg %>% filter(class=="compact")
mean(mpg_suv$cty)
mean(mpg_compact$cty)

#3
mpg_audi<-mpg %>% filter(manufacturer=="audi")
head(mpg_audi$hwy,5)

#4
library(ggplot2)
df<-data.frame(midwest)
str(df)
summary(df)

#5
total<-midwest$poptotal
total
asian<-midwest$popasian
asian

#6
asian_per_tot<-asian/total
boxplot(asian_per_tot)

#7
ave<-mean(asian_per_tot)
mutate(ifelse(avg=<"large", "small"))

#8
table(large, small)
geom_bar(large, small)
