library(shiny)
library(shinydashboard)

dashboardPage(
  dashboardHeader(title = "Population"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Graphiques", tabName = "popEU_W", icon = icon("chart-pie")),
      menuItem("Croissance", tabName = "growth", icon = icon("chart-line")),
      menuItem("Vieillesse", tabName = "65Up", icon = icon("user")),
      menuItem("Informations", tabName = "informations", icon = icon("info"))
    )
  ),
  
  dashboardBody(
    
    tabItems(
      
      tabItem(tabName = "popEU_W",
              source("./ui/popEU_W.R")
      ),
    
      tabItem(tabName = "growth",
              source("./ui/growthRapport.R")
      ), 
      
      tabItem(tabName = "65Up",
              source("./ui/65UpRapport.R")
      ),
      
      tabItem(tabName = "informations",
              source("./ui/informations.R")
      )
      
    )
  )
)