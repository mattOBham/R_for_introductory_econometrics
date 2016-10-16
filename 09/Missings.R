library(foreign)
lawsch<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/lawsch85.dta")

# extract LSAT
lsat <- lawsch$LSAT

# Create logical indicator for missings
missLSAT <- is.na(lawsch$LSAT)

# LSAT and indicator for Schools No. 120-129:
rbind(lsat,missLSAT)[,120:129]

# Frequencies of indicator
table(missLSAT)

# Missings for all variables in data frame (counts)
colSums(is.na(lawsch))

# Indicator for complete cases
compl <- complete.cases(lawsch)
table(compl)

