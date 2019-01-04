## Moyennes Population

# Moyenne population Europe
europe11_17 <- rangeBetweenColumByName(europe, "X2011..YR2011.", "X2017..YR2017.")
averagePopEurope11_17 <- rowMeans(europe11_17)
europe60_10 <- rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010.")
averagePopEurope60_10 <- rowMeans(europe60_10)

DFaveragePopEurope <- data.frame(
  "Years" = c("1960-2010", "2011-2017"), 
  "Population" = c(averagePopEurope60_10, averagePopEurope11_17)
)

# Moyenne population Monde
world11_17 <- rangeBetweenColumByName(world, "X2011..YR2011.", "X2017..YR2017.")
averagePopWorld11_17 <- rowMeans(world11_17)
world60_10 <- rangeBetweenColumByName(world, "X1960..YR1960.", "X2010..YR2010.")
averagePopWorld60_10 <- rowMeans(world60_10)

DFaveragePopWorld <- data.frame(
  "Years" = c("1960-2010", "2011-2017"), 
  "Population" = c(averagePopWorld60_10, averagePopWorld11_17)
)
