# Simulated data 
set.seed(8237445)
y <- rbinom(100,1,0.5)
x <- rnorm(100) + 2*y

# Estimation
linpr.res <-  lm(y~x)
logit.res <- glm(y~x,family=binomial(link=logit))
probit.res<- glm(y~x,family=binomial(link=probit))

# Prediction for regular grid of x values
xp <- seq(from=min(x),to=max(x),length=50)
linpr.p <- predict( linpr.res, list(x=xp), type="response" )
logit.p <- predict( logit.res, list(x=xp), type="response" )
probit.p<- predict( probit.res,list(x=xp), type="response" )

# Graph
plot(x,y)
lines(xp,linpr.p, lwd=2,lty=1)
lines(xp,logit.p, lwd=2,lty=2)
lines(xp,probit.p,lwd=1,lty=1)
legend("topleft",c("linear prob.","logit","probit"),
                                 lwd=c(2,2,1),lty=c(1,2,1))
