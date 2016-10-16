library(foreign)
hprice1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice1.dta")

# original linear regression
orig <- lm(price ~ lotsize+sqrft+bdrms, data=hprice1)

# RESET test
library(lmtest)
resettest(orig)
