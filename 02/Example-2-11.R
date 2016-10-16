require(foreign)
ceosal1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1.dta")

# Estimate log-log model
lm( log(salary) ~ log(sales), data=ceosal1 )