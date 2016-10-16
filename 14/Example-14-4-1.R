library(foreign);library(plm);library(stargazer)
wagepan<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wagepan.dta")

# Generate pdata.frame:
wagepan.p <- pdata.frame(wagepan, index=c("nr","year") )

pdim(wagepan.p)

# Check variation of variables within individuals
pvar(wagepan.p)
