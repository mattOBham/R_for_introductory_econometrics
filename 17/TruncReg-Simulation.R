library(truncreg)
# Simulated data 
set.seed(93876553)
x  <- sort(rnorm(100)+4)
y  <- -4 + 1*x + rnorm(100)

# complete observations and observed sample:
compl <- data.frame(x,y)
sample <- subset(compl, y>0)

# Predictions
pred.OLS   <- predict(       lm(y~x, data=sample) )
pred.trunc <- predict( truncreg(y~x, data=sample) )

# Graph
plot(   compl$x, compl$y,  pch= 1,xlab="x",ylab="y")
points(sample$x,sample$y,  pch=16)
lines( sample$x,pred.OLS,  lty=2,lwd=2)
lines( sample$x,pred.trunc,lty=1,lwd=2)
abline(h=0,lty=3)        # horizontal line at 0
legend("topleft", c("all points","observed points","OLS fit",
                    "truncated regression"),
       lty=c(NA,NA,2,1),pch=c(1,16,NA,NA),lwd=c(1,1,2,2))

