mydatapop <- read.csv("./data/data.csv", sep=",")

europe <- mydatapop[mydatapop$Country.Code=='EUU',]

barChartEurope <- barplot(europe$X1960..YR1960.,  xlab = "Ages", ylab = "Morts", main="Morts en France en 1990")