# not to be printed
# generate data
year     <- c(2008,2009,2010,2011,2012,2013)
product1 <- c(0,3,6,9,7,8)
product2 <- c(1,2,3,5,9,6)
product3 <- c(2,4,4,2,3,2)
mymat <- cbind(year,product1,product2,product3)
write.table(mymat, file = "data/sales.txt",row.names=F, quote=F)
write.table(mymat, file = "data/sales.csv",row.names=F, quote=F, sep=",",col.names=F)

mydata <- read.table("data/sales.txt", header=TRUE)
mydata <- read.table("data/sales.csv", sep=",")

