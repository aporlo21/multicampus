# day 12



<https://movie.daum.net/moviedb/grade?movieId=111292&type=netizen&page=1>

<https://movie.daum.net/moviedb/grade?movieId=111292&type=netizen&page=3>



F12 - 개발자 도구창 

404 : resource adress 잘못된 것 4로 시작

server error 5로 시작 



로그인 스크래핑 

<p class="desc_review"> <!-- 모바일에서 더보기 클릭시 style="height:auto" -->
										기생충같은 일베 평점 테러할래?
									</p>

---



library(rvest)
url<-"https://movie.daum.net/moviedb/grade?movieId=111292&type=netizen&page=1"
htxt<-read_html(url)

review<-html_nodes(htxt, ".desc_review")

review<-html_text(review)

---



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

---

write.table(allReviews,"review.txt")

---

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

write.table(allReviews,"review2.txt")

---

<https://www.yelp.com/biz/seoul-garden-dallas>

<https://www.yelp.com/biz/seoul-garden-dallas?start=20>

<https://www.yelp.com/biz/seoul-garden-dallas?start=40>