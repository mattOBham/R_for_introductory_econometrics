# Download data from Yahoo Finance and store as "zoo" object
library(zoo);library(pdfetch);library(dynlm);library(stargazer)
dataset <- zoo( pdfetch_YAHOO("GE", fields="adjclose", 
                          from="2000-01-01", to="2013-12-31") )

# Calculate return as the log difference
ret <- diff( log(dataset$GE) )

# Plot returns
plot(ret)

# Linear regression of models with lags:
reg1 <- dynlm(ret~L(ret) ) 
reg2 <- dynlm(ret~L(ret)+L(ret,2) ) 
reg3 <- dynlm(ret~L(ret)+L(ret,2)+L(ret,3) ) 

# Pretty regression table
stargazer(reg1, reg2, reg3, type="text",
                            keep.stat=c("n","rsq","adj.rsq","f"))
