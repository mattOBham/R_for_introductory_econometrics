# Simulation of asymptotics. Not to be printed.


# LLN
for (n in c(10, 50, 100, 1000)){
  set.seed(123456)
  ybar <- rep(0,10000)
  for(j in 1:10000) {
    sample <- rnorm(n,10,2)
    ybar[j] <- mean(sample)
  }
  mhat <- mean(ybar)
  shat <- var(ybar)
  cat(shat)
  
  grfile = paste0("../figures/",subdir,"/","MCSim-lln-n",toString(n),".pdf")
  pdf(file = grfile, width = 5, height = 3.5)
  par(mar=c(2,4,1,0.5),mfrow=c(1,1))
  plot(density(ybar),xlim=c(8.5,11.5),ylim=c(0,2))
  curve(dnorm(x,10,2/sqrt(n)), add=TRUE,lty=2)
  dev.off()
}
#######################################


grfile = paste0("../figures/",subdir,"/","MCSim-chisqdens",".pdf")
pdf(file = grfile, width = 5, height = 3)
par(mar=c(2,4,1,0.5),mfrow=c(1,1))
curve( dchisq(x,1) ,0,3)
dev.off()



# CLT
for (n in c(2, 10, 100,10000)){
  set.seed(123456)
  ybar <- rep(0,10000)
  for(j in 1:10000) {
    sample <- rchisq(n,1)
    ybar[j] <- mean(sample)
  }
  mhat <- mean(ybar)
  shat <- var(ybar)
  cat(shat)
  
  grfile = paste0("../figures/",subdir,"/","MCSim-clt-n",toString(n),".pdf")
  pdf(file = grfile, width = 5, height = 3.5)
  par(mar=c(2,4,1,0.5),mfrow=c(1,1))
#  plot(density(ybar),xlim=c(0,2),ylim=c(0,2))
  plot(density(ybar))
  curve(dnorm(x,1,sqrt(2/n)), add=TRUE,lty=2)
  dev.off()
}



