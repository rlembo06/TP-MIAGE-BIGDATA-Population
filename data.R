library(dplyr)

# Importation de la base de données Kaggle
mydatapop <- read.csv("./data/data.csv", sep=",")

# FUNCTIONS : 
getIndexColumn <- function(df, col) { which(names(df) == col) }
rangeBetweenColumByName <- function(df, col1, col2) { df[, getIndexColumn(df, col1) : getIndexColumn(df, col2)] }

#GLOBAL : 
DFpercentage65UpByYears_init <- data.frame("Years" = 1960:2010, "Europe" = 1960:2010, "World"= 1960:2010)

# Population totale par pays
totalPopulationByCountry <- mydatapop[mydatapop$Series.Code == 'SP.POP.TOTL',]
totalPopulationByCountry_65Up <- mydatapop[mydatapop$Series.Code == 'SP.POP.65UP.TO',]
totalPopulationByCountry1960 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X1960..YR1960.")]
totalPopulationByCountry2018 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X2018..YR2018.")]

# Population Europe
europePop2018 <- totalPopulationByCountry2018[totalPopulationByCountry2018$Country.Code == 'EUU',]$X2018..YR2018.
europePop1960 <- totalPopulationByCountry1960[totalPopulationByCountry1960$Country.Code == 'EUU',]$X1960..YR1960.
europe65Up <- totalPopulationByCountry_65Up[totalPopulationByCountry_65Up$Country.Code == 'EUU',]
europe <- totalPopulationByCountry[totalPopulationByCountry$Country.Code == 'EUU',]

# Population Monde
worldPop2018 <- totalPopulationByCountry2018[totalPopulationByCountry2018$Country.Code == 'WLD',]$X2018..YR2018.
worldPop1960 <- totalPopulationByCountry1960[totalPopulationByCountry1960$Country.Code == 'WLD',]$X1960..YR1960.
world65Up <- totalPopulationByCountry_65Up[totalPopulationByCountry_65Up$Country.Code == 'WLD',]
world <- totalPopulationByCountry[totalPopulationByCountry$Country.Code == 'WLD',]

# Moyenne population Europe de 1960 à 2010
averagePopEurope60_10 <- rowMeans(rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010."))

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

DFpercentage65UpByYears_world <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'World') %>% 
  mutate(percentage65Up = World) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears_europe <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'Europe') %>% 
  mutate(percentage65Up = Europe) %>% 
  select(Years,region, percentage65Up)

# Fusion DFpercentage65UpByYears_europe + DFpercentage65UpByYears_world :
DFpercentage65UpByYears <- bind_rows(DFpercentage65UpByYears_world,DFpercentage65UpByYears_europe)
  
####

# Pourcentage +65 ans Europe de 2011 à 2017
europeYears65Up11_17 <- rangeBetweenColumByName(europe65Up, "X2011..YR2011.", "X2017..YR2017.")
europeYears11_17 <- rangeBetweenColumByName(europe, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_Europe11_17 <- 100 * europeYears65Up11_17 / europeYears11_17
#plotPercentage65UpByYears_Europe11_17 <- as.data.frame(t(percentage65UpByYears_Europe11_17)) # Inversion tableau