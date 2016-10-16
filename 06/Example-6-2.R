library(foreign)
hprice2<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice2.dta")

res<- lm(log(price)~log(nox)+log(dist)+rooms+I(rooms^2)+
           stratio,data=hprice2)
summary(res)