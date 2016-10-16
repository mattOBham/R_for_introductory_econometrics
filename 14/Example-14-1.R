library(foreign);library(plm)
jtrain<-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/jtrain.dta")

# Generate pdata.frame:
jtrain.p <- pdata.frame(jtrain, index=c("fcode","year") )

# Manual calcualtion using within transformation
jtrain.p$lscrap.w <- Within(log(jtrain.p$scrap))
jtrain.p$d88.w <- as.numeric(Within(jtrain.p$d88))
jtrain.p$d89.w <- as.numeric(Within(jtrain.p$d89))
jtrain.p$grant.w <- as.numeric(Within(jtrain.p$grant))
jtrain.p$grant_1.w <- as.numeric(Within(jtrain.p$grant_1))
lm(lscrap.w~0+d88.w+d89.w+grant.w+grant_1.w,data=jtrain.p)

# Automatic  calcualtions using within transformation
plm(log(scrap)~d88+d89+grant+grant_1,data=jtrain.p,model="within")
