library(foreign)
hprice1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/hprice1.dta")

# Estimate model
reg <- lm(price~lotsize+sqrft+bdrms, data=hprice1)
reg

# Automatic BP test
library(lmtest)
bptest(reg)

# Manual regression of squared residuals 
summary(lm( resid(reg)^2 ~ lotsize+sqrft+bdrms, data=hprice1))
