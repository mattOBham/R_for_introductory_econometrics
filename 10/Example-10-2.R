library(foreign)
intdef <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/intdef.dta")

# Linear regression of static model:
summary( lm(i3~inf+def,data=intdef)  )
