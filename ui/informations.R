fluidRow(
  
  titlePanel("Informations"),

  box(title = "Accès aux sources", width = 12,
      solidHeader = TRUE, status = "primary", 
      "Lien du repertoire Github contenant le code source :", 
      a("TP rlembo Github", href="https://github.com/rlembo06/TP-MIAGE-BIGDATA-Population"), br(),
      tags$b("Composition du repertoire : "), br(),
      tags$ul(
        tags$li("Scripts pour effectuer les statistiques et vérification d'hypothèses (R) : /R/data.stats.R"),
        tags$li("Scripts pour générer les graphiques (FIG) : ",
          tags$ul(
            tags$li("Graphique sur le vieillissement : /FIG/plot65Rapport.R"),
            tags$li("Graphique sur sur la croissance : /FIG/plotGrowthRapport.R")
          )
        ),
        tags$li("Rapport final (REP) : Découpé en 2 parties", 
        tags$ul(
            tags$li("Croissance: /REP/growthRapport.R"),
            tags$li("Vieillesse: /REP/65UpRapport.R")
          )
        )
      )
  ),

  box(title = "Membres du projet (Groupe 15) - M1 MIAGE 2018-2019", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$ul(
        tags$li("LEMBO Romain :",
          tags$ul(
            tags$li("Déploiement de l'application R avec Shiny"),
            tags$li("Nettoyage des données"),
            tags$li("Générations de graphiques (plots)"),
            tags$li("Recherche et calcul de statistiques (Croissances, moyennes, proportions +65 ans, total population)")
          )
        ),
        tags$li("NASSIK Sarah :",
          tags$ul(
            tags$li("Rédaction rapport"),
            tags$li("Nettoyage des données"),
            tags$li("Vérification d'hypothèses"),
            tags$li("Générations de graphiques (plots)"),
            tags$li("Recherche et calcul de statistiques (Tests students, variances, croissances)")
          )
        ),
        tags$li("DEKEYSER Benjamin :",
            tags$ul(
              tags$li("Rédaction du rapport")
            )
          )
      )
  )
  
)
