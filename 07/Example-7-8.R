library(foreign)
lawsch85<-
     read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/lawsch85.dta")

# Define cut points for the rank
cutpts <- c(0,10,25,40,60,100,175)

# Create factor variable containing ranges for the rank
lawsch85$rankcat <- cut(lawsch85$rank, cutpts)

# Display frequencies
table(lawsch85$rankcat)

# Choose reference category
lawsch85$rankcat <- relevel(lawsch85$rankcat,"(100,175]")

# Run regression
lm(log(salary)~rankcat+LSAT+GPA+log(libvol)+log(cost), data=lawsch85)
