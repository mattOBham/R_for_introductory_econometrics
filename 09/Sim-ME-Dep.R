# Set the random seed
set.seed(1234567)
# set true parameters: intercept & slope 
b0<-1; b1<-0.5
# initialize b1hat to store 10000 results:
b1hat <- numeric(10000)
b1hat.me <- numeric(10000)

# Draw a sample of x, fixed over replications:
x <- rnorm(1000,4,1)
# repeat r times:
for(j in 1:10000) {
  # Draw a sample of u
  u <- rnorm(1000)
  # Draw a sample of ystar:
  ystar <- b0 + b1*x + u
  # regress ystar on x and store slope estimate at position j
  bhat <- coef( lm(ystar~x) )
  b1hat[j] <- bhat["x"]
  # Measurement error and mismeasured y:
  e0 <- rnorm(1000)
  y <- ystar+e0
  # regress y on x and store slope estimate at position j
  bhat.me <- coef( lm(y~x) )
  b1hat.me[j] <- bhat.me["x"]
}

# Mean with and without ME
c( mean(b1hat), mean(b1hat.me) )
# Variance with and without ME
c( var(b1hat), var(b1hat.me) )
