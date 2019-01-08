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
## Moyennes Population

source("./R/averages.R")
# -------------------------- #
## Population de + 65 ans

source("./R/65Up.R")
# -------------------------- #
# Taux de croissance

source("./R/rateGrowth.R")