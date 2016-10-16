library(foreign)
gpa1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/gpa1.dta")

# Full estimation results including automatic SE :
res <- lm(colGPA ~ hsGPA+ACT, data=gpa1)
summary(res)

# Extract SER (instead of calculation via residuals)
( SER <- summary(res)$sigma )

# regressing hsGPA on ACT for calculation of R2 & VIF
( R2.hsGPA  <- summary( lm(hsGPA~ACT, data=gpa1) )$r.squared )
( VIF.hsGPA <- 1/(1-R2.hsGPA) )

# manual calculation of SE of hsGPA coefficient:
n <- nobs(res)
( SE.hsGPA <- 1/sqrt(n-1) * SER/sd(gpa1$hsGPA)  * sqrt(VIF.hsGPA) )
