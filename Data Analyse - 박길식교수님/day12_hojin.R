install.packages("rvest")
library(rvest)
url<-"https://movie.daum.net/moviedb/grade?movieId=111292&type=netizen&page=1"
htxt<-read_html(url)
htxt
str(htxt)
review<-html_nodes(htxt, ".desc_review")
review
review<-html_text(review)
review

cnt<-html_nodes(htxt, ".txt_menu")
cnt
cnt<-html_text(cnt)
cnt

#과제 ) 233 / 10+1 => 24 // 괄호제거 수치연산
paste("1","2",sep="") #결합함수

allReviews<-c() #초기화

url_default<-"https://movie.daum.net/moviedb/grade?movieId=111292&type=netizen&page="
for(page in 1:24){
  url<-paste(url_default,page,sep="")
  htmlTxt<-read_html(url)
  review<-html_nodes(htmlTxt,".desc_review")
  reviews<-html_text(review)
  allReviews<-c(allReviews,reviews)
  print(page)
}

allReviews

write.table(allReviews,"review.txt")

#---------영화리뷰 추출 완료------------
allReviews<-c()
url_default<-"https://movie.naver.com/movie/point/af/list.nhn?st=mcode&sword=161967&target=before&page="
for(page in 1:40){
  url<-paste(url_default,page,sep="") # , encoding="euc_kr" #에러 / 한글문자 인코딩문제
  htmlTxt<-read_html(url,encoding = "cp949")
  review<-html_nodes(htmlTxt,".list_netizen")
  review<-html_nodes(review,".title")
  reviews<-html_text(review)
  allReviews<-c(allReviews,reviews)
  #print(review)
}
#특정태크 title 출력을 위해서 해당 상위클래스 소환
allReviews
# 395 -> 40 으로추출 
# class="list_netizen b_star"
write.table(allReviews,"review2.txt")

# 과제2) 포털사이트에서 특정단어를 검색한후, 지식인의 글을 추출

#백과사전 추출
#계층구조확인
#wikicontent-clearfix
#class-inner-content
#class-heading-content
#class=wiki-list

url<-"https://namu.wiki/w/%EA%B8%B0%EC%83%9D%EC%B6%A9" #unicode상 한국어표기 3bite
htmlTxt<-read_html(url)
content<-html_nodes(htmlTxt,".wiki-heading-content") #read_nodes 클래스 or #아이디
content
content<-html_text(content)
#html_nodes(htmlTxt,"a") # .을 안쓰면 태그 가 된다 // 영역설정
class(content) #vector로 저장
library(KoNLP)
useSejongDic() #sejongDic : 우리나라말에 해당되는 사전 // 바탕으로 명사 추출및 분류
unlist(extractNoun(content)) #1894

text<-sapply(content, extractNoun, USE.NAMES = F)
text<-unlist(text) #1894
text<-Filter(function(x){nchar(x)>=2},text)
text #1407 개

text<-gsub("\\d+", "", text)
data<-table(text)
class(table(text))
writes.csv(data, "기생충.scv")

#https://www1.president.go.kr/petitions/best?page=1

#트위터 크롤링
install.packages(c("twitteR","ROAuth","base64enc"))
library("twitteR")
library("ROAuth")
library("base64enc")

# 트위터 계정 발급키 입력
consumerKey <- "Consumer Key (API Key)"
consumerSecret <- "Consumer Secret (API Key)"
accessToken <- "Access Token"
accessTokenSecret <- "Access Token Secret"

# oauth 인증 파일 저장
setup_twitter_oauth(consumerKey, consumerSecret, accessToken, accessTokenSecret)
# 콘솔 창에 1(yes) 선택

#키워드 저장
keyword <-enc2utf8("기생충")

# 크롤링할 트위터 수(n=1000)와 언어(lang="ko") 
data<- searchTwitter(keyword, n=1000, lang="ko")

length(data)