library(pdfetch)

# Which Yahoo Finance symbols?
# "^gspc"=S&P 500, "^ixic"=NASDAQ Composite, "AAPL"=Apple Inc.
tickernames <- c("^gspc","^ixic", "AAPL")

# Download data
yahoo<-pdfetch_YAHOO(tickernames,fields="adjclose",from="2000-01-01")

# The end date is left out, so we get the latest data. Today is...
Sys.Date()

# Number of obs., first and last rows of data
nrow(yahoo)
head(yahoo)
tail(yahoo)

# Time series plot of Apple stock
plot(yahoo$AAPL, las=2)
