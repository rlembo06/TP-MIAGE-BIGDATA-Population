########################
# Parameter / DF : degré de liberté
# statistic : Affichage  de la statistique t
# conf.int : L’intervalle de confiance de la moyenne (à 95% par défaut) en fonction du type de test
# estimate : Valeurs moyennes 
########################

# Test Student : Taux de croissance Europe entre 1960-2010 et 2011-2017 :
europeVec60_10 <- as.data.frame(t(europe60_10))
colnames(europeVec60_10)[1] = "Population"
DFeuropeGrowth60_10 <- rateGrowthPopulation("Europe", europeVec60_10, c(1960:2010));

#tStudentEuropeGrowth <- t.test(x = DFeuropeGrowth60_10$Growth, y = DFeuropeGrowth11_17$Growth)
tStudentEuropeGrowth60_10 <- t.test(x = DFeuropeGrowth60_10$Growth, mu = 0.004)
tStudentEuropeGrowth11_17 <- t.test(x = DFeuropeGrowth11_17$Growth, mu = 0.008)

# -------------------------- #

# Test Student : Taux de croissance Europe % de + 65 ans entre 1960-1966 et 2011-2017 :
percentEurope65Up60_10 <- rangeBetweenColumByName(percentage65UpByYears_Europe, "X1960..YR1960.", "X2010..YR2010.")
percentEuropeVec65Up60_10 <- as.data.frame(t(percentEurope65Up60_10))
colnames(percentEuropeVec65Up60_10)[1] = "Population"
DFeuropeGrowth65Up60_10 <- rateGrowthPopulation("Europe", percentEuropeVec65Up60_10, c(1960:2010));

percentEuropeVec65Up11_17 <- as.data.frame(t(percentage65UpByYears_Europe11_17))
colnames(percentEuropeVec65Up11_17)[1] = "Population"
DFeuropeGrowth65Up11_17 <- rateGrowthPopulation("Europe", percentEuropeVec65Up11_17, c(2011:2017));

tStudentEuropeGrowth65Up60_10 <- t.test(DFeuropeGrowth65Up60_10$Growth, mu = 0.004)
tStudentEuropeGrowth65Up11_17 <- t.test(DFeuropeGrowth65Up11_17$Growth, mu = 0.015)