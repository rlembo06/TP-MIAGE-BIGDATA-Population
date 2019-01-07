fluidRow(
  
  titlePanel("Informations"),

  box(title = "Accès aux sources", width = 12,
      solidHeader = TRUE, status = "primary", 
      "Lien du repertoire Github contenant le code source :", 
      a("TP rlembo Github", href="https://github.com/rlembo06/TP-MIAGE-BIGDATA-Population"), br(),
      tags$b("Composition du repertoire : "), br(),
      tags$ul(
        tags$li("Base de données : /data/data.csv"),
        tags$li("Scripts pour effectuer les statistiques (Onglet \"Graphiques\") : ", 
          tags$ul(
            tags$li("Proportion +65 ans : /scripts/65Up.R"),
            tags$li("Moyenne population : /scripts/averages.R"),
            tags$li("Taux de croissance : /scripts/rateGrowth.R")
          )
        ),
        tags$li("Scripts pour générer les graphiques (Onglet \"Graphiques\") : ",
          tags$ul(
            tags$li("Création des graphiques : server.R"),
            tags$li("Affichage des graphiques : /ui/popEU_W.R")
          )
        ),
        tags$li("Scripts pour effectuer les statistiques et vérification d'hypothèses : Dossier /scripts/data.stats.R"),
        tags$li("Scripts pour générer les graphiques : ",
          tags$ul(
            tags$li("Création des graphiques : ",
              tags$ul(
                tags$li("Rapport sur le vieillissement : /scripts/plot65Rapport.R"),
                tags$li("Rapport sur la croissance : /scripts/plotGrowthRapport.R")
              )
            ),
            tags$li("Affichage des graphiques : ",
              tags$ul(
                tags$li("Rapport sur le vieillissement : /ui/65UpRapport.R"),
                tags$li("Rapport sur la croissance : /ui/growthRapport.R")
              )
            )
          )
        ),
        br(),
        tags$li("Rapport final : Il est découpé en 2 parties", 
        tags$ul(
            tags$li("Croissance: /ui/growthRapport.R"),
            tags$li("Vieillesse: /ui/65UpRapport.R")
          )
        )
      )
  ),

  box(title = "Membres du projet - M1 MIAGE 2018-2019", width = 12,
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
