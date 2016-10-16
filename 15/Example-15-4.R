library(foreign);library(AER);library(stargazer)
card <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/card.dta")

# Checking for relevance: reduced form
redf<-lm(educ ~ nearc4+exper+I(exper^2)+black+smsa+south+smsa66+reg662+
           reg663+reg664+reg665+reg666+reg667+reg668+reg669, data=card)
# OLS
ols<-lm(log(wage)~educ+exper+I(exper^2)+black+smsa+south+smsa66+reg662+
           reg663+reg664+reg665+reg666+reg667+reg668+reg669, data=card)
# IV estimation
iv <-ivreg(log(wage)~educ+exper+I(exper^2)+black+smsa+south+smsa66+
             reg662+reg663+reg664+reg665+reg666+reg667+reg668+reg669 
          | nearc4+exper+I(exper^2)+black+smsa+south+smsa66+
            reg662+reg663+reg664+reg665+reg666+reg667+reg668+reg669
          , data=card)

# Pretty regression table of selected coefficients
stargazer(redf,ols,iv,type="text",
          keep=c("ed","near","exp","bl"),keep.stat=c("n","rsq"))

