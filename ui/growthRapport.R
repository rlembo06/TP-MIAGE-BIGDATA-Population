fluidRow(
  
  titlePanel("Rapport sur la croissance européenne"),
  
  box(title = "Contexte", width = 12,
      solidHeader = TRUE, status = "primary", 
      tags$b("Vérificattion d'hypothèse statistique"), br(),
      "L’hypothèse statistique porte sur l'affirmation suivante  
      tags$b(" la population européenne qui n’augmente que très légèrement au fil des années. "),
      tags$b("Nous allons donc nous intéresser au taux de croissance de la population européenne."),
      La variable aléatoire sera donc un pourcentage.
      Une hypothèse statistique est une contrainte que l’on pose sur un des paramètres de la distribution.
      tags$li("L'hypothèse statistique porte ici sur le Taux de croissance.")
      tags$li("Pour vérifier cette affirmation nous allons confronter les périodes de 1960 à 2010 avec celle de 2011 à 2017.")

  ),
  
     box(title = "Hypothèse H0 et H1",width = 12,
      solidHeader = TRUE, status = "primary", 
      "Pour valider ou invalider cette affirmation, nous allons réaliser un test de Student. 
        Ce test a pour but de comparer deux échantillons et déterminer si les échantillons 
        sont semblables ou significativement différents. Pour réaliser ce test et comparer les 
        deux échantillons nous posons deux hypothèses."

        tags$b("H0 = Hypothèse nulle"), br(),
        Le taux de croissance de la population européenne de 2011 à 2017 est équivalent aux
       cinquante années précédentes (de 1960 à 2010). 
                                       H0: m = 0.4%

      tags$b("H1 = Hypothèse alternative"), br(),
      Le taux de croissance moyen de la population européenne de 2011 à 2017 est significativement inférieur au taux de croissance moyen de 1960 à 2010.

                                       H1: m < 0.4%

  ),

   box(title = "Récupération des données",width = 12,
      solidHeader = TRUE, status = "primary", 
      "Afin de permettre l’analyse des données, nous avons  besoin de récolter les variables qui nous intéressent. Pour se faire nous avons
      commencé par identifier, dans la base de données issue de kaggle,  la population européenne totale au fil des années : ", 

      a("iamge tableau1 (), br(),
      "Une fois ce dataset sélectionné, nous avons calculé le taux de croissance annuel de la poulation européenne de la 
       manière suivante :"

      a("image TauxCroissanceCal (), br(),
      a("image TauxCroissanceR (), br(),

      "Nous avons choisi de calculé ce taux de croissance de la sorte car les données commencent en 1960. Nous assumons
      ainsi que le nombre de personne dans la population est relevé en début d’années."

      "Nous avons ainsi calculé ce taux pour les deux échantillons de 1960 à 2010 et pour  l’échantillon expérimental de 2011 à 2017.
       A partir de ces données nous avons pu calculer la moyenne et la variance de ces échantillons :"
      a("image Tableau2 (), br(),
 
  ),

 box(title = "Vérification des hypothèses",width = 12,
      solidHeader = TRUE, status = "primary", 
      "Peut-on accepter l'hypothèse H0 qui dit que  Le taux de croissance de la population européenne de 2011 à 2017 est équivalent aux cinquante années précédentes (de 1960 à 2010)? 
      Pour se faire, comme dit précédemment, nous allons réaliser un test de Student sur ces  échantillons et nous allons prendre comme échantillons de référence, le taux de croissance de la population européenne de 1960 à 2010, dont la moyenne est environ égale à 0.408%. 
       "
        "Il faut ensuite  calculer la statistique de test  Zstat définie comme suit :"

      a("image zstat1 (), br(),
      a("image zstat2 (), br(),
      "Vérification avec R Studio :"
      a("image zstatR (), br(),
      
         "Récupération du degré de liberté (n-1) :"
        "Une fois cette statistique de test calculée, nous devons la comparer à la valeur de t Student défini dans la table. Si l'on fixe le niveau de significativité à 5% et on prend un échantillon de la population 
        européenne de 2011 à 2017, (degré de liberté égal à n-1=6), on trouve que le t-Student est égal à 1.9432."
      a("image alpha1 (), br(),
)
),

  box(title = "Conclusion", width = 12,
      solidHeader = TRUE, status = "primary", 
       tags$b("|Zstat|= 4.24 > 1.94, l'hypothèse nulle est infirmée et l’alternative est confirmée."), br(),

     "Le taux de croissance moyen de la population européenne de 2011 à 2017 est donc significativement inférieur au taux de croissance moyen de 1960 à 2010. 
      La population européenne augmente de moins en moins vite."
  ),

)
