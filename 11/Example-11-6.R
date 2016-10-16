# Libraries for dynamic lm and "stargazer" regression table 
library(foreign);library(dynlm);library(stargazer)
fertil<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/fertil3.dta")

# Define Yearly time series beginning in 1913
tsdata <- ts(fertil, start=1913)

# Linear regression of model with first differences:
res1 <- dynlm( d(gfr) ~ d(pe), data=tsdata)

# Linear regression of model with lagged differences:
res2 <- dynlm( d(gfr) ~ d(pe) + L(d(pe)) + L(d(pe),2), data=tsdata)

# Pretty regression table
stargazer(res1,res2,type="text")
