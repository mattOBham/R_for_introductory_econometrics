library(foreign)
d401k <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/401k.dta")

# OLS regression:
summary( lm(prate ~ mrate+age, data=d401k) )
