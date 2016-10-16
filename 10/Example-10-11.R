library(foreign);library(dynlm);library(lmtest)
barium <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/barium.dta")

# Define monthly time series beginning in Feb. 1978
tsdata <- ts(barium, start=c(1978,2), frequency=12)

res <- dynlm(log(chnimp) ~ log(chempi)+log(gas)+log(rtwex)+befile6+
                          affile6+afdec6+ season(tsdata) , data=tsdata )
coeftest(res)
