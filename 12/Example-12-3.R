library(foreign);library(dynlm);library(car);library(lmtest)
barium<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/barium.dta")

tsdata <- ts(barium, start=c(1978,2), frequency=12)

reg <- dynlm(log(chnimp)~log(chempi)+log(gas)+log(rtwex)+
                                  befile6+affile6+afdec6, data=tsdata )

# Pedestrian test: 
residual <- resid(reg)
resreg <- dynlm(residual ~ L(residual)+L(residual,2)+L(residual,3)+
                           log(chempi)+log(gas)+log(rtwex)+befile6+
                                          affile6+afdec6, data=tsdata )
linearHypothesis(resreg, 
                 c("L(residual)","L(residual, 2)","L(residual, 3)"))

# Automatic test:
bgtest(reg, order=3, type="F")
