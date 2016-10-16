library(foreign)
hprice2<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice2.dta")

# Estimate model with standardized variables:
lm(scale(price) ~ 0+scale(nox)+scale(crime)+scale(rooms)+
                              scale(dist)+scale(stratio), data=hprice2)

