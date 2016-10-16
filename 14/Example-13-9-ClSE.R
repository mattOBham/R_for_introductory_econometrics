library(foreign);library(plm);library(lmtest)
crime4<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/crime4.dta")

# Generate pdata.frame:
crime4.p <- pdata.frame(crime4, index=c("county","year") )

# Estimate FD model:
reg <- ( plm(log(crmrte)~d83+d84+d85+d86+d87+lprbarr+lprbconv+ 
                   lprbpris+lavgsen+lpolpc,data=crime4.p, model="fd") )
# regression table with standard SE
coeftest(reg)
# regression table with "clustered" SE:
coeftest(reg,vcovHC)
