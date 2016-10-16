library(foreign);library(urca)
inven <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/inven.dta")

# automated ADF test using urca:
summary( ur.df(log(inven$gdp) , type = c("trend"), lags = 1) )
