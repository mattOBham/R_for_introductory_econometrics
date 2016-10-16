require(foreign)
vote1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/vote1.dta")

# OLS regression (parentheses for immediate output):
( VOTEres <- lm(voteA ~ shareA, data=vote1) )

# scatter plot with regression line:
plot(vote1$shareA, vote1$voteA)
abline(VOTEres)