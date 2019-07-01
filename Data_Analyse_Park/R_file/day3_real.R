# dplyr ��Ű��
exam %>% 
  mutate(result = ifelse(science>=60,"pass","fail"))

#summarise
exam %>% 
  group_by(class) %>% 
  summarise(meanMath=mean(math),
            medianMath=median(math),
            sumMath=sum(math),
            count=n(), # group �� ������ ��
            sdMath=sd(math),
            minMath=min(math),
            maxmath=max(math))

# JOIN
mid <- data.frame(side=c(100,200,300,400,500),
                  scoreMid=c(90,90,50,70,100))
final<-data.frame(side2=c(100,200,300,400,500),
                  scoreFinal=c(70,80,60,80,90))
left_join(mid,final,by=c("side"="side2"))

# NA (����ġ)
df <- data.frame(sex=c("F","NA",NA,"M","F"),
                 score=c(50,40,40,30,NA))

#NA �� ���Ե� �� �����ϱ�
df %>% filter(is.na(score)) # score�� NA�� ���Ե� �� ����
dfnomiss %>% filter(!is.na(score)) # score�� NA�� ���Ե� �� ����

# df�� sex, score�� NA ���Ե� ���� �����Ͽ� dfnomiss �� �����ϱ�


# omit. NA �ڵ� ����
dfnomiss2 <- na.omit(df)

# �Լ� ��ü���� NA ���� �ɼ� ���̱� na.rm = T
mean(df$score, na.rm=T)
sum(df$score, na.rm=T)

#���Ƿ� NA �߰��ϱ�
exam[c(2,5,10), "science"] <- NA #2,5,10 ���� science ���� NA��.

#NA �����ϰ� Ư�� �� ��� ���ϱ�
exam %>% summarise(meansci=mean(science, na.rm=T))

#����ġ�� ������� ��ü�ϱ�
exam$science <- ifelse(is.na(exam$science),mean(exam$science, na.rm=T),exam$science)

#�̻�ġ�� ����ġ(NA)��
mpg$hwy <- ifelse(mpg$hwy<12 | mpg$hwy>37, NA, mpg$hwy)
table(is.na(mpg$hwy)) # ���� hwy�� ����ġ ���� ���

#����ġ ������ �� ����
mpg %>% 
  group_by(drv) %>%
  summarise(hwy_mean = mean(hwy, na.rm=T))

















