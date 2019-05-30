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

