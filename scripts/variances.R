## Variances population entre Europe et Monde :

varPop11_17 <- var(c(averagePopEurope11_17, averagePopWorld11_17))
varPop60_10 <- var(c(averagePopEurope60_10, averagePopWorld60_10))

DFvarPop <- data.frame(
  "Years" = c("1960-2010", "2011-2017"), 
  "Variance" = c(varPop60_10, varPop11_17)
)

## Variances population entre Europe et Monde (+ 65 ans) :

europe65Up60_10 <- rangeBetweenColumByName(europe65Up, "X1960..YR1960.", "X2010..YR2010.")
averagePopEurope65Up60_10 <- rowMeans(europe65Up60_10)

world65Up60_10 <- rangeBetweenColumByName(world65Up, "X1960..YR1960.", "X2010..YR2010.")
averagePopWorld65Up60_10 <- rowMeans(world65Up60_10)

europe65Up11_17 <- rangeBetweenColumByName(europe65Up, "X2011..YR2011.", "X2017..YR2017.")
averagePopEurope65Up11_17 <- rowMeans(europe65Up11_17)

world65Up11_17 <- rangeBetweenColumByName(world65Up, "X2011..YR2011.", "X2017..YR2017.")
averagePopWorld65Up11_17 <- rowMeans(world65Up11_17)

varPop65Up60_10 <- var(c(averagePopEurope65Up60_10, averagePopWorld65Up60_10))
varPop65Up11_17 <- var(c(averagePopEurope65Up11_17, averagePopWorld65Up11_17))

DFvarPop65Up <- data.frame(
  "Years" = c("1960-2010", "2011-2017"), 
  "Variance" = c(varPop65Up60_10, varPop65Up11_17)
)