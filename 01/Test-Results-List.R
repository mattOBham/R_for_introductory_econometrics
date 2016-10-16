library(foreign)
audit <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/audit.dta")

# store test results as a list "testres"
testres <- t.test(audit$y)

# print results:
testres

# component names: which results can be accessed?
names(testres)

# p-value
testres$p.value