library(foreign)
gpa3 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/gpa3.dta")

# Estimate model for males (& spring data)
lm(cumgpa~sat+hsperc+tothrs, data=gpa3, subset=(spring==1&female==0))

# Estimate model for females (& spring data)
lm(cumgpa~sat+hsperc+tothrs, data=gpa3, subset=(spring==1&female==1))
