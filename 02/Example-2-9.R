library(foreign)
vote1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/vote1.dta")

VOTEres <- lm(voteA ~ shareA, data=vote1)

# Summary of the regression results
summary(VOTEres)

# Calculate R^2 manually:
var( fitted(VOTEres) ) / var( vote1$voteA )
