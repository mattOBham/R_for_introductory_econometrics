# Subfigure (c): kernel density estimate
plot( density(ROE) )

# Subfigure (d): overlay 
hist(ROE, freq=FALSE, ylim=c(0,.07))
lines( density(ROE), lwd=3 )