# Test Student : Taux de croissance Europe entre 1960-1966 et 2011-2017 :
europe60_66 <- rangeBetweenColumByName(europe, "X1960..YR1960.", "X1966..YR1966.")
europeVec60_66 <- as.data.frame(t(europe60_66))
colnames(europeVec60_66)[1] = "Population"
DFeuropeGrowth60_66 <- rateGrowthPopulation("Europe", europeVec60_66, c(1960:1966));

tStudentEuropeGrowth <- t.test(x = DFeuropeGrowth60_66$Growth, y = DFeuropeGrowth11_17$Growth)

DFtStudentEuropeGrowth <- data.frame(
  "quantity" = tStudentEuropeGrowth$p.value, 
  "density" = dnorm(tStudentEuropeGrowth$p.value)
  
)


dfs <- length(DFeuropeGrowth60_66$Growth)-1
x_ <- seq(-5,5,0.5)
y <- dt(x_,dfs)
plot(x_ , y, type='l',lwd=3,col='blue',xlab='x',ylab='Density',main='Student distribution 9 dof')

# ---------------- #

# Test Student : Taux de croissance Europe % de + 65 ans entre 1960-1966 et 2011-2017 :
percentEurope65Up60_66 <- rangeBetweenColumByName(percentage65UpByYears_Europe, "X1960..YR1960.", "X1966..YR1966.")
percentEuropeVec65Up60_66 <- as.data.frame(t(percentEurope65Up60_66))
colnames(percentEuropeVec65Up60_66)[1] = "Population"
DFeuropeGrowth65Up60_66 <- rateGrowthPopulation("Europe", percentEuropeVec65Up60_66, c(1960:1966));

percentEuropeVec65Up11_17 <- as.data.frame(t(percentage65UpByYears_Europe11_17))
colnames(percentEuropeVec65Up11_17)[1] = "Population"
DFeuropeGrowth65Up11_17 <- rateGrowthPopulation("Europe", percentEuropeVec65Up11_17, c(2011:2017));

tStudentEuropeGrowth65Up <- t.test(DFeuropeGrowth65Up60_66$Growth, DFeuropeGrowth65Up11_17$Growth, paired = TRUE)