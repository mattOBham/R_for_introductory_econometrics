library(foreign);library(plm)
crime4<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/crime4.dta")

crime4.p <- pdata.frame(crime4, index=c("county","year") )
pdim(crime4.p)

# manually calculate first differences of crime rate:
crime4.p$dcrmrte <- diff(crime4.p$crmrte)

# Display selected variables for observations 1-9:
crime4.p[1:9, c("county","year","crmrte","dcrmrte")]

# Estimate FD model:
coeftest( plm(log(crmrte)~d83+d84+d85+d86+d87+lprbarr+lprbconv+ 
                  lprbpris+lavgsen+lpolpc,data=crime4.p, model="fd") )
