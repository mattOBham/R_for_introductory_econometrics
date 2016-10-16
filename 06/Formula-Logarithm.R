library(foreign)
hprice2<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice2.dta")

# Estimate model with logs:
lm(log(price)~log(nox)+rooms, data=hprice2)