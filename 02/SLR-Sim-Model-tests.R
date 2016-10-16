# Set the random seed
set.seed(123456)

# set true parameters
b0<-1; b1<-2

# initialize b0hat and b1hat to store results later:
b0hat <- rep(0,100000)
b1hat <- rep(0,100000)
b0hatc <- rep(0,100000)
b1hatc <- rep(0,100000)

xc <- rnorm(10,5,1)

# repeat 10000 times:
for(j in 1:100000) {
  # Draw a sample
  x <- rnorm(10,5,1)
  u <- rnorm(10,0,0.2)
  y <- b0 + b1*x + u
  
  # estimate parameters
  bhat <- coefficients(lm(y~x))
  b0hat[j] <- bhat["(Intercept)"]
  b1hat[j] <- bhat["x"]
  
  yc<-b0 + b1*xc + u
  bhatc <- coefficients(lm(yc~xc))
  b0hatc[j] <- bhatc["(Intercept)"]
  b1hatc[j] <- bhatc["xc"]
}

mean(b0hat)
mean(b1hat)

1/999 * 2^2 * mean(x^2) / var(x)
1/999 * 2^2 / var(x)

var(b0hat)
var(b1hat)

var(b0hatc)
var(b1hatc)

