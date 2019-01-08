source("./R/index.R")

fluidRow(
  titlePanel("Etude de la population mondiale et européene"),
  
  box(title = "Sujet, et ses finalités", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$b("Évolution de la composition de la population"), br(),
      "Il est bien connu que la population mondiale compte désormais plus de sept milliards et demi d’individus
      et qu’elle est en augmentation constante. Par contre, on dit que la population européenne n’augmente que très
      légèrement au fil des années et qu’elle est de plus en plus âgée. Afin de vérifier ces deux hypothèses, nous allons
      utiliser la base données qui se trouve sur la plateforme Kaggle. Il s’agira d’utiliser les données dans la plage 1960-2010 pour calculer
      la moyenne et la variance des variables aléatoires qui nous intéressent. Puis on utilisera les données de 2011 à 2017
      comme échantillon pour la vérification des hypothèses. On utilisera la même technique d’exploitation des séries
      temporelles pour étudier la proportion de population âgée de plus de 65 ans."
  ),
  
  box(title = "Données utilisées",width = 12,
      solidHeader = TRUE, status = "primary", 
      "Les données sont proviennent de la plateforme Kaggle : ", a("Kaggle (global-population-estimates)", href="https://www.kaggle.com/theworldbank/global-population-estimates"), br(),
      "Ces données ont été téléchargées et désarchivées pour exploiter une base en .csv.", br(),
      "Kaggle est une plateforme en ligne sur laquelle sont repertorié un grand nombre d'ensemble de données. 
      Pour ce projet, les données ont les caractéristiques suivantes :", br(),
      tags$ul(
        tags$li("Auteur: Sohier Dane"),
        tags$li("95 colonnes"),
        tags$li("44813 lignes"),
        tags$li("44,3 Mo")
      )
  ),
  
  fluidRow(
    box(title = "Proportion +65 ans (1960 - 2010)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotPercent65Up60_10")),
    box(title = "Proportion +65 ans (2011 - 2017)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotPercent65Up11_17"))
  ),
  
  fluidRow(
    box(title = "Taux de croissance (1960 - 2010)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotGrowth60_10")),
    box(title = "Taux de croissance (2011 - 2017)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotGrowth11_17"))
  ),
  
  fluidRow(
    box(title = "Moyenne population Europe", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotAveragePopEurope")),
    box(title = "Moyenne population Monde", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotAveragePopWorld")),
    box(title = "Total population", 
        solidHeader = TRUE, status = "primary", 
        tags$ul(
          tags$li("Europe en 1960 : ", europePop1960),
          tags$li("Europe en 2017 : ", europePop2017),
          tags$li("Monde en 1960 : ", worldPop1960),
          tags$li("Monde en 2017 : ", worldPop2017)
        ))
  )
)