#1) mpg 데이터는 11개 변수로 구성되어 있습니다. 이 중 일부만 추출해서 분석에 활용하려고 합니다. mpg 데이터에서 class(자동차 종류), cty(도시 연비) 변수를 추출해 새로운 데이터를 만드세요. 새로 만든 데이터의 일부를 출력해서 두 변수로만 구성되어 있는지 확인하세요. 

library(ggplot2)
library(dplyr)
mpg
df<-mpg %>% select(class,cty)
df

#2) 자동차 종류에 따라 도시 연비가 다른지 알아보려고 합니다. 앞에서 추출한 데이터를 이용해서 class(자동차 종류)가 "suv"인 자동차와 "compact"인 자동차 중 어떤 자동차의 cty(도시 연비)가 더 높은지 알아보세요. 
dfs<-df %>% filter(class=="suv")
dfc<-df %>% filter(class=="compact")
mean(dfs$cty)
mean(dfc$cty)

#3) "audi"에서 생산한 자동차 중에 어떤 자동차 모델의 hwy(고속도로 연비)가 높은지 알아보려고 합니다. "audi"에서 생산한 자동차 중 hwy가 1~5위에 해당하는 자동차의 데이터를 출력하세요. 
#ggplot2 패키지에는 미국 동북중부 437개 지역의 인구통계 정보를 담은 midwest라는 데이터가 포함되어 있습니다. midwest 데이터를 사용해 데이터 분석 문제를 해결해보세요. 

midwest<-as.data.frame(midwest)
head(midwest)
view(midwest)
summary(midwest)
dim(midwest)
str(midwest)

#5) poptotal(전체 인구)을 total로, popasian(아시아 인구)을 asian으로 변수명을 수정하세요.
midwest<-rename(midwest, total=poptotal)
midwest<-rename(midwest, asian=poptotal)
str(midwest)

#6) total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율' 파생변수를 만들고, 히스토그램을 만들어 도시들이 어떻게 분포하는지 살펴보세요. 
midwest$ratio<-midwest$asian

#7) 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하면 "large", 그 외에는 "small"을 부여하는 파생변수를 만들어 보세요. 
mean(midwest$ratio)
midwest$group<-ifelse(midwest$ratio)
table(midwest$group)
qplot(midwest$group)
