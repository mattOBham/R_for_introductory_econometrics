require(foreign)
wage1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

# Estimate log-level model
lm( log(wage) ~ educ, data=wage1 )