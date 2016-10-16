require(foreign)
ceosal1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1.dta")

# OLS regression
lm( salary ~ roe, data=ceosal1 )