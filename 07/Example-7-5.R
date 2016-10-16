library(foreign)
wage1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

lm(log(wage) ~ female+educ+exper+I(exper^2)+tenure+I(tenure^2), data=wage1)
