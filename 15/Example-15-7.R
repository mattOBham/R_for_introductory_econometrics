library(foreign);library(AER);library(lmtest)
mroz <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mroz.dta")

# restrict to non-missing wage observations
oursample <- subset(mroz, !is.na(wage))

# 1st stage: reduced form
stage1<-lm(educ~exper+I(exper^2)+motheduc+fatheduc, data=oursample)

# 2nd stage
stage2<-lm(log(wage)~educ+exper+I(exper^2)+resid(stage1),data=oursample)

# results including t tests
coeftest(stage2)
