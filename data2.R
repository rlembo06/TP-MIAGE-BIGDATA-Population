# A read-only data set that will load once, when Shiny starts, and will be
# available to each user session

mydatapop <- read.csv("~/Sarah/Master1/MathBigData/TP PopMondial/TP2/global-population-estimates/data.csv", sep=",")

# Population mondiale totale 1960 à 2010
poptotal<- mydatapop[mydatapop$Series.Code=='SP.POP.TOTL',]

# Moyenne population mondiale totale de 1960 à 2010
moywpop<-poptotal2[5:55]

rowMeans(moywpop)

# resultat :
# 44281 (numéro de ligne)
# 4896580083 

# Addition
sum(df$`44281`)

# resultat :
#[1] 249725584241

# resultat variable aleatoire
df<-as.data.frame(t(moywpop))
var(df$`44281`)
# Résulat
#[1] 1414212380335748864


#	Calcule de la proportion de la proportion de population âgée de plus de 65 ans.
# Selection de la population mondiale totale :
europepop601065<-europe[europe$Series.Code=='SP.POP.65UP.TO',]

# Placer les valeurs de 1960 à 2010 dans un tableau :
moyeuropepop601065<-europepop601065[5:55]

# Calcule de la moyenne de 1960 à 2010 des plus de 65 ans
rowMeans(moyeuropepop601065)

# Inversion des lignes et des colonnes
df<-as.data.frame(t(moyeuropepop601065))

# Somme des valeurs dans la colonne 13126:
sum(df$'13126')

# Variable aléatoire :
var(df$'13126')

# Population europeenne totale 1960 à 2010
europe<-mydatapop[mydatapop$Country.Code=='EUU',]

# Selection de European Union population totale :
europepop<-europe[europe$Series.Code=='SP.POP.TOTL',]

# Placer les valeurs de 1960 à 2010 dans un tableau :
moypopeurope<-europepop[5:55]

# Calcule population europeenne Moyenne
rowMeans(moypopeurope)

# Inversion des lignes et des colonnes
df<-as.data.frame(t(moypopeurope))

# Somme des valeurs dans la colonne 13141 :
sum(df$'13141')

# Calcule variable aléatoire population europeenne 1960 à 2010:
var(df$'13141')

# Placer les valeurs de la population europeenne de 1960 à 2010 :
europepop601065<-europe[europe$Series.Code=='SP.POP.65UP.TO',]

# Placer les valeurs de 1960 à 2010 dans un tableau :
moyeuropepop601065<-europepop601065[5:55]

# Calcule moyenne de la population europeenne de 1960 à 2010 de + de 65 ans:
rowMeans(moyeuropepop601065)

# Inversion des lignes et des colonnes
df<-as.data.frame(t(moyeuropepop601065))

# Somme des valeurs dans la colonne 13126:
sum(df$'13126')

# Calcule variable aléatoire de la population europeenne de 1960 à 2010 de + de 65 ans :
var(df$'13126')

# Recuperation des données de la population europeenne de 2011 à 2017
# Placer les valeurs de 1960 à 2010 dans un tableau :
moypopeurope2<-europepop[56:62]

# Calcule moyenne de la population europeenne de 2011 à 2017 :
rowMeans(moypopeurope2)

# Inversion des lignes et des colonnes
df<-as.data.frame(t(moypopeurope2))

# Somme des valeurs dans la colonne 13141 :
sum(df$'13141')

# Variable aléatoire :
var(df$'13141')

# Calcule de la proportion de la population âgée de plus de 65 ans de 2011 à 2017 :
# Selection de European Union population totale :
europepop111765<-europe[europe$Series.Code=='SP.POP.65UP.TO',]

# Placer les valeurs de 1960 à 2010 dans un tableau :
moyeuropepop111765<-europepop111765[56:62]

# Moyenne population âgée de plus de 65 ans de 2011 à 2017 : :
rowMeans(moyeuropepop111765)

# Somme des valeurs dans la colonne 13126:
sum(df$'13126')

# Variable aléatoire :
var(df$'13126')