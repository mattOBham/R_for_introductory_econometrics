library(foreign)
lawsch<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/lawsch85.dta")

# Mean of a variable with missings:
mean(lawsch$LSAT)
mean(lawsch$LSAT,na.rm=TRUE)

# Regression with missings
summary(lm(log(salary)~LSAT+cost+age, data=lawsch))
