library(foreign)
audit <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/audit.dta")

# Ingredients to CI formula
(avgy<- mean(audit$y))
(n   <- length(audit$y))
(sdy <- sd(audit$y))
(se  <- sdy/sqrt(n))
(c   <- qnorm(.975))

# 95% Confidence intervall:
avgy + c * c(-se,+se)
# 99% Confidence intervall:
avgy + qnorm(.995) * c(-se,+se)
