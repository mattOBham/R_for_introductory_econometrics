library(foreign);library(plm)
wagepan<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wagepan.dta")

# Generate pdata.frame:
wagepan.p <- pdata.frame(wagepan, index=c("nr","year") )

pdim(wagepan.p)

# Estimate FE model
summary( plm(lwage~married+union+factor(year)*educ, 
                                        data=wagepan.p, model="within") )
