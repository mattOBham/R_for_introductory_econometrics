# Initialize Random Number Generator
set.seed(348546)
# initial empty graph with expected value
plot(c(0,50),c(2,2),type="l",lwd=2,ylim=c(-1,5))

# loop over draws:
for(r in 1:30) {
  # i.i.d. standard normal shock
  e <- rnorm(50)
  # Random walk as cumulative sum of shocks
  y <- ts(cumsum(2+e))
  # First difference
  Dy <- diff(y)
  # Add line to graph
  lines(Dy, col=gray(.6))
}
