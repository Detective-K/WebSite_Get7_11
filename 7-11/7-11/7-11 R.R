#台北
taipei <- read_excel("taipei.xlsx")
taipei<-data.frame(taipei)
library(sqldf)
sqldf("select count(*) taipei_count , 郵遞區號 from  taipei  group by 郵遞區號
")
taipeistore<-sqldf("select count(*) taipei_cont , 郵遞區號 from  taipei  group by 郵遞區號
")
taipeistore
taipeistore$taipei_cont
library(ggplot2)
qplot(taipeistore$郵遞區號,taipeistore$taipei_cont);
mean(taipeistore$taipei_cont);
sd(taipeistore$taipei_cont);

library(ggplot2)
ggplot(taipeistore,aes(x=taipeistore$郵遞區號, fill=taipeistore$taipei_cont))+geom_bar()
class(taipeistore$taipei_cont)
taipeistore$taipei_cont<-as.numeric(taipeistore$taipei_cont)
class(taipeistore$郵遞區號)
ggplot(taipeistore,aes(x=taipeistore$郵遞區號, fill=taipeistore$taipei_cont))+geom_bar()

#新北市
newtaipei <- read_excel("newtaipei.xlsx")
newtaipei<-data.frame(newtaipei)
newtaipei
sqldf("select count(*) newtaipei_count , 郵遞區號 from  newtaipei  group by 郵遞區號
")
newtaipei_store<-sqldf("select count(*) newtaipei_cont , 郵遞區號 from  newtaipei  group by 郵遞區號
")
newtaipei_store
newtaipei_store$newtaipei_cont
library(ggplot2)
qplot(newtaipei_store$郵遞區號,newtaipei_store$newtaipei_cont)
mean(newtaipei_store$newtaipei_cont)
summary(newtaipei_store)
sd(newtaipei_store$newtaipei_cont)
shapiro.test(newtaipei_store$newtaipei_cont)

#桃園市
taoyuan <- read_excel("taoyuan.xlsx")
taoyuan<-data.frame(taoyuan)
taoyuan
sqldf("select count(*) taichung_count , 郵遞區號 from  taoyuan  group by 郵遞區號
")
taoyuan_store<-sqldf("select count(*) taoyuan_cont , 郵遞區號 from  taoyuan  group by 郵遞區號
")
taoyuan_store
taoyuan_store$taoyuan_cont
library(ggplot2)
qplot(taoyuan_store$郵遞區號,taoyuan_store$taoyuan_cont)
mean(taoyuan_store$taoyuan_cont)
sd(taoyuan_store$taoyuan_cont)

#台中市
taichung <- read_excel("taichung.xlsx")
taichung<-data.frame(taichung)
taichung
sqldf("select count(*) taichung_count , 郵遞區號 from  taichung  group by 郵遞區號
")
taichung_store<-sqldf("select count(*) taichung_cont , 郵遞區號 from  taichung  group by 郵遞區號
")
taichung_store
taichung_store$taichung_cont
library(ggplot2)
qplot(taichung_store$郵遞區號,taichung_store$taichung_cont)
mean(taichung_store$taichung_cont)
sd(taichung_store$taichung_cont)

#台南
tainan <- read_excel("tainan.xlsx")
tainan<-data.frame(tainan)
tainan
sqldf("select count(*) tainan_count , 郵遞區號 from  tainan  group by 郵遞區號
")
tainan_store<-sqldf("select count(*) tainan_cont , 郵遞區號 from  tainan  group by 郵遞區號
")
tainan_store
tainan_store$tainan_cont
library(ggplot2)
qplot(tainan_store$郵遞區號,tainan_store$tainan_cont)
mean(tainan_store$tainan_cont)
sd(tainan_store$tainan_cont)

#高雄
library(read_excel)
kaohsiung <- read_excel("kaohsiung.xlsx")
kaohsiung<-data.frame(kaohsiung)
kaohsiung
sqldf("select count(*) kaohsiung_count , 郵遞區號 from  kaohsiung  group by 郵遞區號
")
kaohsiung_store<-sqldf("select count(*) kaohsiung_cont , substr(郵遞區號,1,2) 郵遞區號 from  kaohsiung  group by 郵遞區號
")
kaohsiung_store
kaohsiung_store$kaohsiung_cont
library(ggplot2)
qplot(kaohsiung_store$郵遞區號,kaohsiung_store$kaohsiung_cont)
mean(kaohsiung_store$kaohsiung_cont)
sd(kaohsiung_store$kaohsiung_cont)
