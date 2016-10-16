library(foreign);library(dynlm);library(lmtest);library(sandwich)
minwg<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/prminwge.dta")

tsdata <- ts(minwg, start=1950)

# OLS regression
reg<-dynlm(log(prepop)~log(mincov)+log(prgnp)+log(usgnp)+trend(tsdata), 
                                                          data=tsdata )
# results with usual SE
coeftest(reg)
# results with HAC SE
coeftest(reg, vcovHAC)
