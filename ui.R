library(shiny)

fluidPage(
  titlePanel("Etude de la population mondiale et européene"),
  plotOutput("plotPercent65Up60_10"),
  plotOutput("plotPercent65Up11_17")
)