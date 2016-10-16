library(foreign)
crime1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/crime1.dta")

# Model without avgsen:
summary( lm(narr86 ~ pcnv+ptime86+qemp86, data=crime1) )

# Model with avgsen:
summary( lm(narr86 ~ pcnv+avgsen+ptime86+qemp86, data=crime1) )
