# Libraries
library(zoo);library(pdfetch);library(dynlm);library(lmtest)
# Download GE stock prices from Yahoo Finance and store as "zoo" object
dataset <- zoo( pdfetch_YAHOO("GE", fields="adjclose", 
                              from="2000-01-01", to="2013-12-31") )

# Calculate return as the log difference
GE.ret <- diff( log(dataset$GE) )

# AR(1) model for returns
reg <- dynlm( GE.ret ~ L(GE.ret) ) 

# squared residual
residual.sq <- resid(reg)^2

# Model for squared residual:
ARCHreg <- dynlm(residual.sq ~ L(residual.sq)) 
summary(ARCHreg)
