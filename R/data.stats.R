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

# Récupération du taux de croissance de la population européenne de 1960 à 2010
annualGrowth<-europepop601065[5:55]
for(i in seq(1,51)){ annualGrowth[i]<-(europepop[i+5]-europepop[i+4])/europepop[i+4]}

#Calcule de la moyenne
rowMeans(annualGrowth)
#     13126 
#0.00408268 

df<-as.data.frame(t(annualGrowth))
#View(df)

sum(df$'13126')
#[1] 0.2082167

# Calcule de la variance
var(df$'13126')
#[1] 0.000005074254

# Récupération du taux de croissance de la population européenne de 2011-2017
annualGrowth1117<-europepop[56:62]
for(i in seq(1,7)){ annualGrowth1117[i]<-(europepop[i+56]-europepop[i+55])/europepop[i+55]}

#Calcule de la moyenne
rowMeans(annualGrowth1117)
#     13141 
#0.002377376 

sum(df$'13141')
#[1] 0.01664163

#Calcule de la variance
var(df$'13141')
#[1] 0.000001127283

#Taux population européenne de 1960-2010 de 65 ans et plus
europepop601065<-europe[europe$Series.Code=='SP.POP.65UP.TO.ZS',]

#Calcule de la moyenne
rowMeans(europepop601065)
#   13121 
#13.55143 

sum(df$'13121')
#[1] 691.123

#Calcule de la variance
var(df$'13121')
#[1] 4.667615

#Taux population européenne de 2011-2017 de 65 ans et plus
europepop111765<-europe[europe$Series.Code=='SP.POP.65UP.TO.ZS',]

europepop111765<-europepop111765[56:62]

#Calcule de la moyenne
rowMeans(europepop111765)
#  13121 
#18.82562

df<-as.data.frame(t(europepop111765))
sum(df$'13121')
#[1] 131.7793

#Calcule de la variance
var(df$'13121')
#[1] 0.5498575


#Test de student pour echantillon sur le taux de croissance européenne de 1960 à 2010
res<-t.test(annualGrowth,annualGrowth1117)
res
#Welch Two Sample t-test
#data:  annualGrowth and annualGrowth1117
#t = 3.3409, df = 15.016, p-value = 0.004462
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
# 0.0006174578 0.0027931499
#sample estimates:
#  mean of x   mean of y 
#0.004082680 0.002377376 

#Test de student pour validation hypothese population de plus de 65 ans
res2<-t.test(europepop111765,europepop601065)
res2
#Welch Two Sample t-test
#data:  europepop111765 and europepop601065
#t = 12.789, df = 24.187, p-value = 0.000000000002953
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
# 4.423386 6.124990
#sample estimates:
#mean of x mean of y 
# 18.82562  13.55143 

