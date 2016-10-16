library(foreign)
barium <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/barium.dta")

# Imports from China: Variable "chnimp" from data frame "data"
# Monthly time series starting Feb. 1978
impts <- ts(barium$chnimp, start=c(1978,2), frequency=12)

# plot time series
plot(impts)
