# Importation de la base de données Kaggle
mydatapop <- read.csv("./data/data.csv", sep=",")

# Population totale par pays
totalPopulationByCountry <- mydatapop[mydatapop$Series.Name == 'Population, total',]
totalPopulationByCountry1960 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X1960..YR1960.")]
totalPopulationByCountry2018 <- totalPopulationByCountry[, c("Country.Name", "Country.Code", "X2018..YR2018.")]

# Population Europe
europePop2018 <- totalPopulation2018[totalPopulation2018$Country.Code == 'EUU',]$X2018..YR2018.
europePop1960 <- totalPopulation1960[totalPopulation1960$Country.Code == 'EUU',]$X1960..YR1960.

# Population Monde
worldPop2018 <- totalPopulation2018[totalPopulation2018$Country.Code == 'WLD',]$X2018..YR2018.
worldPop1960 <- totalPopulation1960[totalPopulation1960$Country.Code == 'WLD',]$X1960..YR1960.


###################

# Sélection de l'Union Européene
europe <- mydatapop[mydatapop$Country.Code == 'EUU',]

# Sélection de la population de l'Union Européene
europepop = subset(europe, select = -c(Country.Name, Country.Code, Series.Code, Series.Name) )

# UE : Placer les valeurs de 1960 à 2010 dans un tableau :
moypopeurope <- barplot(europepop$X1960..YR1960., xlab = "Population", ylab = "Country", main="Moyenne population en Europe")
