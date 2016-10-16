library(foreign)
gpa2 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/gpa2.dta")

# Regress and report coefficients
reg <- lm(colgpa~sat, data=gpa2)
reg

# Regressor (SAT) values for prediction: from 400 to 1600 in steps of 100
SAT <- data.frame(sat=seq(400,1600,100))

# Predictions including 95% CI
GPA.pred <- predict(reg, SAT, interval = "confidence")

# Table of SAT an predictions:
cbind(SAT,GPA.pred)

# Plot:
# type="l":     Line plot
# lty=c(1,2,2): solid,dashed,dashed
matplot(SAT, GPA.pred, type="l", lty=c(1,2,2),ylim=c(1.5,4.5))

#####################################################################
# Alternative: Quadratic model
reg <- lm(colgpa~sat+I(sat^2),data=gpa2)
GPA.pred <- predict(reg, SAT, interval = "confidence")
matplot(SAT, GPA.pred, type="l", lty=c(1,2,2),ylim=c(1.5,4.5))
