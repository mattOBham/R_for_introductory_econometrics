# Calculate partial effects 
linpr.eff <- coef(linpr.res)["x"] * rep(1,100)
logit.eff <- coef(logit.res)["x"] * dlogis(predict(logit.res))
probit.eff <- coef(probit.res)["x"] * dnorm(predict(probit.res))

# Graph
plot(  x,linpr.eff, pch=1,ylim=c(0,.7),ylab="partial effect")
points(x,logit.eff, pch=3)
points(x,probit.eff,pch=18)
legend("topright",c("linear prob.","logit","probit"),pch=c(1,3,18))
