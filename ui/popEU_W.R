fluidRow(
  titlePanel("Etude de la population mondiale et européene"),
  
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
    box(title = "Test Student Taux de croissance Europe", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotDFtStudentEuropeGrowth"))
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
          tags$li("Europe en 1960 : ", textOutput("europePop1960")),
          tags$li("Europe en 2017 : ", textOutput("europePop2017")),
          tags$li("Monde en 1960 : ", textOutput("worldPop1960")),
          tags$li("Monde en 2017 : ", textOutput("worldPop2017"))
        ))
  ),
  
  fluidRow(
    box(title = "Variance Europe/Monde (1960 - 2010) / (2011 - 2017)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotVariancePop")),
    box(title = "Variance +65 ans Europe/Monde (1960 - 2010) / (2011 - 2017)", 
        solidHeader = TRUE, status = "primary", 
        plotOutput("plotVariancePop65Up"))
  )
)