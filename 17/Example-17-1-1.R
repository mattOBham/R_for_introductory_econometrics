library(foreign);library(car); library(lmtest)  # for robust SE
mroz <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mroz.dta")

# Estimate linear probability model
linprob <- lm(inlf~nwifeinc+educ+exper+I(exper^2)+age+kidslt6+kidsge6,data=mroz)
# Regression table with heteroscedasticity-robust SE and t tests:
coeftest(linprob,vcov=hccm)
