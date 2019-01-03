fluidRow(
  titlePanel("Etude de la population mondiale et européene"),
  plotOutput("plotPercent65Up60_10"),
  plotOutput("plotPercent65Up11_17"),
  p("- Total population Europe en 1960 : ", textOutput("europePop1960")),
  p("- Total population Europe en 2017 : ", textOutput("europePop2017")),
  plotOutput("plotAveragePopEurope"),
  p("- Total population Monde en 1960 : ", textOutput("worldPop1960")),
  p("- Total population Monde en 2017 : ", textOutput("worldPop2017")),
  plotOutput("plotAveragePopWorld")
)