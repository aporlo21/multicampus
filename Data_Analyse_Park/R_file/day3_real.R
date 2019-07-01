# dplyr 패키지
exam %>% 
  mutate(result = ifelse(science>=60,"pass","fail"))

#summarise
exam %>% 
  group_by(class) %>% 
  summarise(meanMath=mean(math),
            medianMath=median(math),
            sumMath=sum(math),
            count=n(), # group 내 구성원 수
            sdMath=sd(math),
            minMath=min(math),
            maxmath=max(math))

# JOIN
mid <- data.frame(side=c(100,200,300,400,500),
                  scoreMid=c(90,90,50,70,100))
final<-data.frame(side2=c(100,200,300,400,500),
                  scoreFinal=c(70,80,60,80,90))
left_join(mid,final,by=c("side"="side2"))

# NA (결측치)
df <- data.frame(sex=c("F","NA",NA,"M","F"),
                 score=c(50,40,40,30,NA))

#NA 가 포함된 행 제거하기
df %>% filter(is.na(score)) # score에 NA가 포함된 행 추출
dfnomiss %>% filter(!is.na(score)) # score에 NA가 포함된 행 제거

# df의 sex, score에 NA 포함된 행을 제외하여 dfnomiss 에 저장하기


# omit. NA 자동 제거
dfnomiss2 <- na.omit(df)

# 함수 자체에서 NA 제거 옵션 붙이기 na.rm = T
mean(df$score, na.rm=T)
sum(df$score, na.rm=T)

#임의로 NA 추가하기
exam[c(2,5,10), "science"] <- NA #2,5,10 행의 science 값을 NA로.

#NA 무시하고 특정 열 평균 구하기
exam %>% summarise(meansci=mean(science, na.rm=T))

#결측치를 평균으로 대체하기
exam$science <- ifelse(is.na(exam$science),mean(exam$science, na.rm=T),exam$science)

#이상치를 결측치(NA)로
mpg$hwy <- ifelse(mpg$hwy<12 | mpg$hwy>37, NA, mpg$hwy)
table(is.na(mpg$hwy)) # 이제 hwy의 결측치 수를 출력

#결측치 제외한 후 연산
mpg %>% 
  group_by(drv) %>%
  summarise(hwy_mean = mean(hwy, na.rm=T))


















