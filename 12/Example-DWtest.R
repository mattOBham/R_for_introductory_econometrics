library(foreign);library(dynlm);library(lmtest)
phillips <- 
    read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/phillips.dta")

tsdata <- ts(phillips, start=1948)

# Estimation of both Phillips curve models:
reg.s <- dynlm( inf ~ unem, data=tsdata, end=1996)
reg.ea <- dynlm( d(inf) ~ unem, data=tsdata, end=1996)

# DW tests
dwtest(reg.s)
dwtest(reg.ea)
