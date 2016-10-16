# load package for dealing with Stata files:
library(foreign)
# download data and create data frame "affairs":
affairs<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/affairs.dta")

# first six rows:
head(affairs)

#averages:
colMeans(affairs)
