library(foreign)
intdef <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/intdef.dta")

# Variable "year" as the time measure:
intdef$year

# define "zoo" object containing all data, time measure=year:
library(zoo)
zoodata <- zoo(intdef, order.by=intdef$year)

# Time series plot of inflation
plot(zoodata$i3)
