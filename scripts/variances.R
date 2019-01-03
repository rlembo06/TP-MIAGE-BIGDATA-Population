# Variances population
europePop60_10 <- as.data.frame(t(europe60_10))
varPopEurope60_10 <- var(europePop60_10[,1])

worldPop60_10 <- as.data.frame(t(world60_10))
varPopWorld60_10 <- var(worldPop60_10[,1])