# Importation de la base de données Kaggle
mydatapop <- read.csv("./data/data.csv", sep=",")

# FUNCTIONS : 
getIndexColumn <- function(df, col) { which(names(df) == col) }
rangeBetweenColumByName <- function(df, col1, col2) { df[, getIndexColumn(df, col1) : getIndexColumn(df, col2)] }

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

# Moyenne population Europe de 1960 à 2010
averagePopEurope60_10 <- rowMeans(rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010."))

# Pourcentage +65 ans Europe de 1960 à 2010
europeYears65Up <- rangeBetweenColumByName(europe65Up, "X1960..YR1960.", "X2010..YR2010.")
europeYears <- rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010.")
percentage65UpByYears_Europe <- 100 * europeYears65Up / europeYears

# Pourcentage +65 ans Europe de 2011 à 2017
europeYears65Up11_17 <- rangeBetweenColumByName(europe65Up, "X2011..YR2011.", "X2017..YR2017.")
europeYears11_17 <- rangeBetweenColumByName(europe, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_Europe11_17 <- 100 * europeYears65Up11_17 / europeYears11_17

###################

# Inversion des lignes et des colonnes + plots
df <- as.data.frame(t(percentage65UpByYears_Europe))
#df <- barplot(df[,1], xlab = "Population", ylab = "Country", main="% population +65 ans en Europe")