library(foreign)
ceosal1<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/ceosal1.dta")

# OLS regression
CEOregres <- lm( salary ~ roe, data=ceosal1 )

# Scatter plot (restrict y axis limits)
plot(ceosal1$roe, ceosal1$salary, ylim=c(0,4000))

# Add OLS regression line
abline(CEOregres)