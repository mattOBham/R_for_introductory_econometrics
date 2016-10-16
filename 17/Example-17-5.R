library(foreign);library(sampleSelection)
mroz <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/mroz.dta")

# Estimate Heckman selection model (2 step version)
res<-selection(inlf~educ+exper+I(exper^2)+nwifeinc+age+kidslt6+kidsge6,
           log(wage)~educ+exper+I(exper^2), data=mroz, method="2step" )
# Summary of results:
summary(res)
