library(foreign)
mlb1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mlb1.dta")

summary(lm(log(salary) ~ years+gamesyr, data=mlb1))