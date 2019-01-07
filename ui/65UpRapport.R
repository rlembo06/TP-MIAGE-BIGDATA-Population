fluidRow(
  
  titlePanel("2. Rapport sur le vieillissement de la population européenne"),
  
  box(title = "Contexte", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$b("Vérificattion d'hypothèse statistique : "), br(),
      
      tags$p("La seconde hypothèse porte sur l'affirmation  ", 
             tags$b("la population européenne est de plus en plus âgée.")),
      
      tags$p("La variable porte cette fois sur  ", 
             tags$b("le taux de la population européenne âgée de plus de 65ans. "), 
             "La variable aléatoire est un pourcentage.")
      
  ),
  
  box(title = "Hypothèse H0 et H1",width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$p("De manière similaire au cas d’étude numéro un, nous allons réaliser un test de Student, ", 
             "et nous posons donc les hypothèses suivantes :"),
      
      tags$b("H0 = Hypothèse nulle :"), br(),
      tags$p("Le taux de la population européenne de 2011 à 2017 âgée de plus de 65ans est 
             équivalent au taux des cinquante années précédentes (de 1960 à 2010). H0: m =13,55143%"),
      
      tags$b("H1 = Hypothèse alternative :"), br(),
      tags$p("Le taux de la population européenne de 2011 à 2017 âgée de plus de 65ans est  
             significativement supérieur  à celui de 1960 à 2010. H1: m > 13,55143%")
      
      ),
  
  box(title = "Récupération des données",width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$p("Afin de permettre l’analyse des données, nous avons  besoin de récolter les variables qui nous intéressent. 
             Pour se faire nous avons commencé par identifier, dans la base de données issue de Kaggle,  le taux de la 
             population européenne âgée de plus de 65ans au fil des années : "), 
      
      tags$img(src="images/65/recupDonnées.PNG"), br(),
      
      tags$p("A partir de ce dataset nous calculons la moyenne et la variance sur les échantillons de 
             1960 à 2010 et sur le deuxième échantillon de 2011 à 2017."), br(),
      
      tags$img(src="images/65/tableau3.PNG"), br()
      
      ),
  
  box(title = "Vérification des hypothèses",width = 12,
      solidHeader = TRUE, status = "primary", 
      
      tags$p("PDe la même manière que pour l’étude numéro un, nous devons calculer la statistique 
             de test Zstat et la comparer au t de Student correspondant pour valider H0 ou H1. "),
  
      tags$img(src="images/65/zstat65.PNG"), br(),
      
      tags$b("Vérification avec R Studio :"), br(),
      tags$img(src="images/65/zstat65.PNG"), br(),
      
      tags$b("Récupération du degré de liberté (n-1) :"),
      tags$p("De la même manière que dans le cas numéro un nous récupérons le t-Student nous intéressant. 
             Comme dans le cas précédant le degré de liberté est égal à 6 et 5% est un taux de significativité acceptable."),
      
      tags$img(src="images/65/alpha65.PNG"), br()
  ),
  
  box(title = "Conclusion", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$b("18.9 étant supérieur à 1.94, l'hypothèse alternative est confirmée."), br(),
      tags$p("Le taux de la population européenne âgée de plus de 65 ans de 2011 à 2017 est significativement supérieur au taux de 1960 à 2010. 
      De plus, plus la statistique de test est grande plus les deux échantillons sont différents, 
      nous pouvons donc conclure que la population européenne est beaucoup plus âgée de 2011 à 2017 
      que sur les cinquante années précédentes.")
  )
  
)
