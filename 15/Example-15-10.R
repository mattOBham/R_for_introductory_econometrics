library(foreign);library(plm)
jtrain <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/jtrain.dta")

# Define panel data (for 1987 and 1988 only)
jtrain.87.88 <- subset(jtrain,year<=1988)
jtrain.p<-pdata.frame(jtrain.87.88, index=c("fcode","year"))

# IV FD regression
summary( plm(log(scrap)~hrsemp|grant, model="fd",data=jtrain.p) )
