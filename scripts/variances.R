## Variances population entre Europe et Monde :

varPop11_17 <- var(c(averagePopEurope11_17, averagePopWorld11_17))
varPop60_10 <- var(c(averagePopEurope60_10, averagePopWorld60_10))

## Variances population entre Europe et Monde (+ 65 ans) :

europe65Up60_10 <- rangeBetweenColumByName(europe65Up, "X1960..YR1960.", "X2010..YR2010.")
averagePopEurope65Up60_10 <- rowMeans(europe65Up60_10)

world65Up60_10 <- rangeBetweenColumByName(world65Up, "X1960..YR1960.", "X2010..YR2010.")
averagePopWorld65Up60_10 <- rowMeans(world65Up60_10)

varPop65Up60_10 <- var(c(averagePopEurope65Up60_10, averagePopWorld65Up60_10))

####
europePop60_10 <- as.data.frame(t(europe60_10))
varPopEurope60_10 <- var(europePop60_10[,1])

worldPop60_10 <- as.data.frame(t(world60_10))
varPopWorld60_10 <- var(worldPop60_10[,1])