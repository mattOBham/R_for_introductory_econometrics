library(foreign)
rdchem <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/rdchem.dta")

# OLS Regression
ols <- lm(rdintens ~ I(sales/1000) +profmarg, data=rdchem)
# LAD Regression
library(quantreg)
lad <- rq(rdintens ~ I(sales/1000) +profmarg, data=rdchem)

# regression table
library(stargazer)
stargazer(ols,lad,  type = "text")