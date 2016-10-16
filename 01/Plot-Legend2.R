curve( dnorm(x,0,1), -10, 10, lwd=1, lty=1)
curve( dnorm(x,0,2),add=TRUE, lwd=2, lty=2)
curve( dnorm(x,0,3),add=TRUE, lwd=3, lty=3)
# Add the legend with greek sigma
legend("topleft",expression(sigma==1,sigma==2,sigma==3),lwd=1:3,lty=1:3)
# Add the text with the formula, centered at x=6 and y=0.3
text(6,.3,
     expression(f(x)==frac(1,sqrt(2*pi)*sigma)*e^{-frac(x^2,2*sigma^2)}))
