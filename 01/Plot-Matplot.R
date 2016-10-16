# Define one x vector for all:
year     <- c(2008,2009,2010,2011,2012,2013)
# Define a matrix of y values:
product1 <- c(0,3,6,9,7,8)
product2 <- c(1,2,3,5,9,6)
product3 <- c(2,4,4,2,3,2)
sales <- cbind(product1,product2,product3)
# plot
matplot(year,sales, type="b", lwd=c(1,2,3), col="black" )