library(foreign)
gpa3 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/gpa3.dta")

# load packages (which need to be installed!)
library(lmtest); library(car)

# Estimate model (only for spring data)
reg <- lm(cumgpa~sat+hsperc+tothrs+female+black+white, 
                                     data=gpa3, subset=(spring==1))
# Usual SE:
coeftest(reg)
# Refined White heteroscedasticity-robust SE:
coeftest(reg, vcov=hccm)
