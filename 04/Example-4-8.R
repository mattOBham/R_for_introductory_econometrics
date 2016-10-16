library(foreign)
rdchem<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/rdchem.dta")

# OLS regression:
myres <- lm(log(rd) ~ log(sales)+profmarg, data=rdchem)

# Regression output:
summary(myres)

# 95% CI:
confint(myres)

# 99% CI:
confint(myres, level=0.99)
