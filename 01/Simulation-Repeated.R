# Set the random seed
set.seed(123456)

# initialize ybar to a vector of length r=10000 to later store results:
ybar <- numeric(10000)

# repeat 10000 times:
for(j in 1:10000) {
  # Draw a sample and store the sample mean in pos. j=1,2,... of ybar: 
  sample <- rnorm(100,10,2)
  ybar[j] <- mean(sample)
}