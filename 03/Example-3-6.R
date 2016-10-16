library(foreign)
wage1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

# OLS regression:
summary( lm(log(wage) ~ educ, data=wage1) )
