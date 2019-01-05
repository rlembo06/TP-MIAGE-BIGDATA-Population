rateGrowthPopulation <- function(region, population, range) {
  df <- data.frame(
    "Years" = range, 
    "Region" = region,
    "Population" = population,
    "Growth" = NA
  )
  for(i in 2:length(df$Population)) {
    df$Growth[i] <- ((df$Population[i] - df$Population[i-1]) / df$Population[i-1])
  }
  return(df)
}

# Taux de croissance Europe de 1960 à 2010 :
europeVec06_10 <- as.data.frame(t(europe60_10))
colnames(europeVec06_10)[1] = "Population"

DFeuropeGrowth60_10 <- rateGrowthPopulation("Europe", europeVec06_10, c(1960:2010))

# Taux de croissance Europe de 2011 à 2017 :
europeVec11_17 <- as.data.frame(t(europe11_17))
colnames(europeVec11_17)[1] = "Population"

DFeuropeGrowth11_17 <- rateGrowthPopulation("Europe", europeVec11_17, c(2011:2017))

# Taux de croissance Monde de 1960 à 2010 :
worldVec06_10 <- as.data.frame(t(world60_10))
colnames(worldVec06_10)[1] = "Population"

DFworldGrowth60_10 <- rateGrowthPopulation("World", worldVec06_10, c(1960:2010))

# Taux de croissance Monde de 2011 à 2017 :
worldVec11_17 <- as.data.frame(t(world11_17))
colnames(worldVec11_17)[1] = "Population"

DFworldGrowth11_17 <- rateGrowthPopulation("World", worldVec11_17, c(2011:2017))

# -------------------- #
# Taux de croissance (1960 - 2010) :
DFGrowth60_10 <- bind_rows(DFworldGrowth60_10, DFeuropeGrowth60_10)

# Taux de croissance (2011 - 2017) :
DFGrowth11_17 <- bind_rows(DFworldGrowth11_17, DFeuropeGrowth11_17)
