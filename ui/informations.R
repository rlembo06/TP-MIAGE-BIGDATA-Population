fluidRow(
  
  titlePanel("Informations"),
  
  box(title = "Sujet et de ses finalités", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$b("Évolution de la composition de la population"), br(),
      "Il est bien connu que la population mondiale compte désormais plus de sept milliards et demi d’individus
      et qu’elle est en augmentation constante. Par contre, on dit que la population européenne n’augment que très
      légèrement au fil des années et qu’elle est de plus en plus âgée. Afin de vérifier ces deux hypothèses, nous allons
      utiliser la base données qui se trouve sur la plateforme Kaggle. Il s’agira d’utiliser les données dans la plage 1960-2010 pour calculer
      la moyenne et la variance des variables aléatoires qui nous intéressent. Puis on utilisera les données de 2011 à 2017
      comme échantillon pour la vérification des hypothèses. On utilisera la même technique d’exploitation des séries
      temporelles pour étudier la proportion de population âgée de plus de 65 ans."
  ),

   box(title = "Données utilisées",width = 12,
      solidHeader = TRUE, status = "primary", 
      "Les données sont proviennent de la plateforme Kaggle : ", a("Kaggle (global-population-estimates)", href="https://www.kaggle.com/theworldbank/global-population-estimates"), br(),
      "Ces données ont été téléchargées et désarchivées pour exploiter une base en .csv."
  ),

  box(title = "Accès aux sources", width = 12,
      solidHeader = TRUE, status = "primary", 
      "Lien du repertoire Github contenant le code source :", a("TP rlembo Github", href="https://github.com/rlembo06/TP-MIAGE-BIGDATA-Population"), br(),
      tags$b("Composition du repertoire : "), br(),
      tags$ul(
        tags$li("Base de données : /data/data.csv"),
        tags$li("Scripts pour effectuer les statistiques et vérification d'hypothèses : Dossier /scripts/"),
        tags$li("Scripts pour générer les graphiques : ",
          tags$ul(
            tags$li("Création des graphiques : server.R"),
            tags$li("Affichage des graphiques : /ui/popEU_W.R")
          )
        ),
        tags$li("Rapport final : /ui/rapport.R")
      )
  )

  box(title = "Membres du projet - M1 MIAGE 2018-2019", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$ul(
        tags$li("LEMBO Romain :",
          tags$ul(
            tags$li("Déploiement de l'application R avec Shiny"),
            tags$li("Générations de graphiques (plots)"),
            tags$li("Rédaction rapport"),
            tags$li("Recherche et calcul de statistiques (Croissances, moyennes, proportions +65 ans, total population)")
          )
        ),
        tags$li("NASSIK Sarah :",
          tags$ul(
            tags$li("Rédaction rapport"),
            tags$li("Recherche et calcul de statistiques (Tests students, variances, croissances)")
          )
        ),
        tags$li("DEKEYSER Benjamin :",
            tags$ul(
              tags$li("Rédaction du rapport")
            )
          )
      )
  ),
  
)
