library(foreign)
gpa1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/gpa1.dta")

# Just obtain parameter estimates:
lm(colGPA ~ hsGPA+ACT, data=gpa1)

# Store results under "GPAres" and display full table:
GPAres <- lm(colGPA ~ hsGPA+ACT, data=gpa1)
summary(GPAres)
