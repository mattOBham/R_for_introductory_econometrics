library(foreign);library(plm)
crime2 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/crime2.dta")

# Define panel data frame
crime2.p <- pdata.frame(crime2, index=46 )

# Panel dimensions:
pdim(crime2.p)

# Observation 1-6: new "id" and "time" and some other variables:
crime2.p[1:6,c("id","time","year","pop","crimes","crmrte","unem")]
