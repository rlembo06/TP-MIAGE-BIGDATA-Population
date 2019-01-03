library(dplyr)

# Importation de la base de données Kaggle
mydatapop <- read.csv("./data/data.csv", sep=",")

# FUNCTIONS : 
getIndexColumn <- function(df, col) { which(names(df) == col) }
rangeBetweenColumByName <- function(df, col1, col2) { df[, getIndexColumn(df, col1) : getIndexColumn(df, col2)] }

# Population totale par pays
totalPopulationByCountry <- mydatapop[mydatapop$Series.Code == 'SP.POP.TOTL',]
totalPopulationByCountry_65Up <- mydatapop[mydatapop$Series.Code == 'SP.POP.65UP.TO',]
totalPopulationByCountry1960 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X1960..YR1960.")]
totalPopulationByCountry2017 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X2017..YR2017.")]

# Population Europe
europePop2017 <- totalPopulationByCountry2017[totalPopulationByCountry2017$Country.Code == 'EUU',]$X2017..YR2017.
europePop1960 <- totalPopulationByCountry1960[totalPopulationByCountry1960$Country.Code == 'EUU',]$X1960..YR1960.
europe65Up <- totalPopulationByCountry_65Up[totalPopulationByCountry_65Up$Country.Code == 'EUU',]
europe <- totalPopulationByCountry[totalPopulationByCountry$Country.Code == 'EUU',]

# Population Monde
worldPop2017 <- totalPopulationByCountry2017[totalPopulationByCountry2017$Country.Code == 'WLD',]$X2017..YR2017.
worldPop1960 <- totalPopulationByCountry1960[totalPopulationByCountry1960$Country.Code == 'WLD',]$X1960..YR1960.
world65Up <- totalPopulationByCountry_65Up[totalPopulationByCountry_65Up$Country.Code == 'WLD',]
world <- totalPopulationByCountry[totalPopulationByCountry$Country.Code == 'WLD',]

# -------------------------- #
## MOyenne Population

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

# -------------------------- #

# Variance population de 1960 à 2010
europePop60_10 <- as.data.frame(t(europe60_10))
varPopEurope60_10 <- var(europePop60_10[,1])

worldPop60_10 <- as.data.frame(t(world60_10))
varPopWorld60_10 <- var(worldPop60_10[,1])

# -------------------------- #
## Population de 1960 à 2010

DFpercentage65UpByYears_init <- data.frame("Years" = 1960:2010, "Europe" = 1960:2010, "World"= 1960:2010)

# Pourcentage +65 ans Monde de 1960 à 2010
worldYears65Up <- rangeBetweenColumByName(world65Up, "X1960..YR1960.", "X2010..YR2010.")
worldYears <- rangeBetweenColumByName(world, "X1960..YR1960.", "X2010..YR2010.")
percentage65UpByYears_World <- 100 * worldYears65Up / worldYears
temp <- as.data.frame(t(percentage65UpByYears_World))
colnames(temp)[1] = "World"
DFpercentage65UpByYears_init$World <- temp$World

# Pourcentage +65 ans Europe de 1960 à 2010
europeYears65Up <- rangeBetweenColumByName(europe65Up, "X1960..YR1960.", "X2010..YR2010.")
europeYears <- rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010.")
percentage65UpByYears_Europe <- 100 * europeYears65Up / europeYears
temp <- as.data.frame(t(percentage65UpByYears_Europe))
colnames(temp)[1] = "Europe"
DFpercentage65UpByYears_init$Europe <- temp$Europe

# Création de la data frame pour le plot
DFpercentage65UpByYears_world <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'World') %>% 
  mutate(percentage65Up = World) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears_europe <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'Europe') %>% 
  mutate(percentage65Up = Europe) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears <- bind_rows(DFpercentage65UpByYears_world,DFpercentage65UpByYears_europe)

# -------------------------- #

# -------------------------- #
## Population de 2011 à 2017

DFpercentage65UpByYears_init <- data.frame("Years" = 2011:2017, "Europe" = 2011:2017, "World"= 2011:2017)

# Pourcentage +65 ans Monde de 2011 à 2017
worldYears65Up11_17 <- rangeBetweenColumByName(world65Up, "X2011..YR2011.", "X2017..YR2017.")
worldYears11_17 <- rangeBetweenColumByName(world, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_World11_17 <- 100 * worldYears65Up11_17 / worldYears11_17
temp <- as.data.frame(t(percentage65UpByYears_World11_17))
colnames(temp)[1] = "World"
DFpercentage65UpByYears_init$World <- temp$World

# Pourcentage +65 ans Europe de 2011 à 2017
europeYears65Up11_17 <- rangeBetweenColumByName(europe65Up, "X2011..YR2011.", "X2017..YR2017.")
europeYears11_17 <- rangeBetweenColumByName(europe, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_Europe11_17 <- 100 * europeYears65Up11_17 / europeYears11_17
temp <- as.data.frame(t(percentage65UpByYears_Europe11_17))
colnames(temp)[1] = "Europe"
DFpercentage65UpByYears_init$Europe <- temp$Europe

# Création de la data frame pour le plot
DFpercentage65UpByYears_world <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'World') %>% 
  mutate(percentage65Up = World) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears_europe <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'Europe') %>% 
  mutate(percentage65Up = Europe) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears11_17 <- bind_rows(DFpercentage65UpByYears_world,DFpercentage65UpByYears_europe)

# -------------------------- #