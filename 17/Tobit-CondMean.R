# Simulated data 
set.seed(93876553)
x         <- sort(rnorm(100)+4)
xb        <- -4 + 1*x 
ystar     <- xb + rnorm(100)
y         <- ystar
y[ystar<0]<- 0

# Conditional means
Eystar <- xb
Ey <- pnorm(xb/1)*xb+1*dnorm(xb/1)

# Graph
plot(x,ystar,ylab="y", pch=3)
points(x,y, pch=1)
lines(x,Eystar, lty=2,lwd=2)
lines(x,Ey    , lty=1,lwd=2)
abline(h=0,lty=3)        # horizontal line at 0
legend("topleft",c(expression(y^"*"),"y",expression(E(y^"*")),"E(y)"),
       lty=c(NA,NA,2,1),pch=c(3,1,NA,NA),lwd=c(1,1,2,2))
