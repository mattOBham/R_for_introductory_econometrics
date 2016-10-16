# Initialize Random Number Generator
set.seed(348546)
# initial empty graph with expected value
plot(c(0,50),c(0,100),type="l",lwd=2)

# loop over draws:
for(r in 1:30) {
  # i.i.d. standard normal shock
  e <- rnorm(50)
  # Random walk as cumulative sum of shocks
  y <- ts(cumsum(2+e))
  # Add line to graph
  lines(y, col=gray(.6))
}
